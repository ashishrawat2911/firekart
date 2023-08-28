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
import 'dart:async';

import 'package:firekart/core/state_manager/view_model.dart';
import 'package:firekart/core/utils/validator.dart';
import 'package:firekart/domain/usecases/get_account_details_usecase.dart';
import 'package:firekart/domain/usecases/set_account_details_usecase.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

import '../state/add_account_details_state.dart';

@injectable
class AddAccountDetailsViewModel extends ViewModel<AddAccountDetailsState> {
  AddAccountDetailsViewModel(
    this._setAccountDetailsUseCase,
    this._getAccountDetailsUseCase,
    ) : super(const AddAccountDetailsState.idle());

  final SetAccountDetailsUseCase _setAccountDetailsUseCase;
  final GetAccountDetailsUseCase _getAccountDetailsUseCase;

  final Validator _validator = Validator();

  void validateButton(String name) {
    state = _validator.validateName(name) == null
        ? const ButtonEnabled()
        : const ButtonDisabled();
  }

  Future<void> loadPreviousData() async {
    state = const AddAccountDetailsState.loading();

    final res = await _getAccountDetailsUseCase.execute();

    res.fold((l) {}, (accountDetails) {
      state = AddAccountDetailsState.editData(accountDetails);
      validateButton(accountDetails.name);
    });
  }

  Future<void> saveData(String name, {bool isEdit = false}) async {
    // final accountDetails = AccountDetails(
    //   name: name,
    //   phoneNumber: _getCurrentUserPhoneNumberUseCase.execute(),
    // );
    //
    // state = const AddAccountDetailsState.saveDataLoading();
    // await _setAccountDetailsUseCase.execute(accountDetails);
    // await _setProfileUserDataUseCase.execute(displayName: accountDetails.name);
    //
    // if (isEdit) {
    //   await NavigationHandler.navigateTo(
    //     const HomeRoute(),
    //     navigationType: NavigationType.pushReplacement,
    //   );
    // } else {
    //   unawaited(NavigationHandler.pop());
    // }
  }
}
