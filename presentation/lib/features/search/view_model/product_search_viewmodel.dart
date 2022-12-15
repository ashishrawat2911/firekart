import 'package:core/state_manager/view_model.dart';
import 'package:domain/usecases/search_products_use_case.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../state/product_search_state.dart';

@injectable
class ProductSearchViewModel extends ViewModel<ProductSearchState> {
  ProductSearchViewModel(this._searchProductsUseCase)
      : super(const ProductSearchState());

  final SearchProductsUseCase _searchProductsUseCase;

  Future<void> searchProduct(String query) async {
    state = state.copyWith(loading: true);
    try {
      final productList = await _searchProductsUseCase.execute(query);

      state = state.copyWith(productList: productList);
    } catch (e) {
      state = state.copyWith(error: '');
    }
    state = state.copyWith(loading: false);
  }
}
