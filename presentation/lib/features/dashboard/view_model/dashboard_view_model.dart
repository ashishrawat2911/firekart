import 'package:core/state/result_state.dart';
import 'package:core/state_manager/view_model.dart';
import 'package:core/utils/connectivity.dart';
import 'package:domain/models/product_model.dart';
import 'package:domain/usecases/get_all_product_usecase.dart';
import 'package:localization/localization.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../state/dashboard_state.dart';

enum ProductData { dealOfTheDay, onSale, topProducts }

@injectable
class DashboardViewModel extends ViewModel<DashboardState> {
  DashboardViewModel(this._getAllProductsUseCase)
      : super(const DashboardState());

  final GetAllProductsUseCase _getAllProductsUseCase;

  Future<void> fetchProductData(ProductData productData) async {
    String condition;
    switch (productData) {
      case ProductData.dealOfTheDay:
        state = state.copyWith(dealOfTheDay: const Loading());
        condition = 'deal_of_the_day';
        break;
      case ProductData.onSale:
        state = state.copyWith(onSale: const Loading());
        condition = 'on_sale';
        break;
      case ProductData.topProducts:
        state = state.copyWith(topProducts: const Loading());
        condition = 'top_products';
        break;
    }
    try {
      if (!(await ConnectionStatus.getInstance().checkConnection())) {
        onErrorState(productData, Localization.value.connectionNotAvailable);
        return;
      }

      final List<Product> productList =
          await _getAllProductsUseCase.execute(condition: condition, all: true);

      final resultState = ResultState.data(data: productList);

      switch (productData) {
        case ProductData.dealOfTheDay:
          state = state.copyWith(dealOfTheDay: resultState);
          break;
        case ProductData.onSale:
          state = state.copyWith(onSale: resultState);
          break;
        case ProductData.topProducts:
          state = state.copyWith(topProducts: resultState);
          break;
      }
    } catch (e) {
      onErrorState(productData, e.toString());
    }
  }

  void onErrorState(ProductData productData, String error) {
    final errorState = ResultState<List<Product>>.error(error: error);
    switch (productData) {
      case ProductData.dealOfTheDay:
        state = state.copyWith(dealOfTheDay: errorState);
        break;
      case ProductData.onSale:
        state = state.copyWith(onSale: errorState);
        break;
      case ProductData.topProducts:
        state = state.copyWith(topProducts: errorState);
        break;
    }
  }
}
