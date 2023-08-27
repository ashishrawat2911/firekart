/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the FireKart open-source project, available at:
 * https://github.com/ashishrawat2911/firekart
 *
 * Created by: Ashish Rawat
 * ----------------------------------------------------------------------------
 *
 * Copyright (c) 2020 Ashish Rawat
 *
 * Licensed under the MIT License.
 *
 * ----------------------------------------------------------------------------
 */
import 'package:firekart/core/message_handler/message_handler.dart';
import 'package:firekart/core/state_manager/view_model.dart';
import 'package:firekart/domain/models/account_details_model.dart';
import 'package:firekart/domain/usecases/edit_address_usecase.dart';
import 'package:firekart/domain/usecases/set_account_details_usecase.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

import '../../../../domain/usecases/add_address_usecase.dart';
import '../../../routes/navigation_handler.dart';
import '../state/add_address_state.dart';

@injectable
class AddAddressViewModel extends ViewModel<AddAddressState> {
  AddAddressViewModel(this._setAccountDetailsUseCase, this._addAddressUseCase,
      this._editAddressUseCase)
      : super(const AddAddressState());

  final SetAccountDetailsUseCase _setAccountDetailsUseCase;
  final AddAddressUseCase _addAddressUseCase;
  final EditAddressUseCase _editAddressUseCase;

  Future<void> saveAddress(
    AddAddress address,
  ) async {
    state = state.copyWith(buttonLoading: true);

    await _addAddressUseCase
        .execute(address)
        .then((res) {
          res.fold((l) {
            MessageHandler.showSnackBar(title: l.errorMessage);
          }, (r) {
            NavigationHandler.pop(true);
          });
        })
        .catchError((e) {})
        .whenComplete(() {
          state = state.copyWith(buttonLoading: false);
        });
  }

  void setDefault(bool isDefault) {
    state = state.copyWith(setAsDefault: isDefault);
  }

  Future<void> editAddress(EditAddress address) async {
    state = state.copyWith(buttonLoading: true);

    await _editAddressUseCase
        .execute(address)
        .then((res) {
          res.fold((l) {
            MessageHandler.showSnackBar(title: l.errorMessage);
          }, (r) {
            NavigationHandler.pop(true);
          });
        })
        .catchError((e) {})
        .whenComplete(() {
          state = state.copyWith(buttonLoading: false);
        });
  }
}
