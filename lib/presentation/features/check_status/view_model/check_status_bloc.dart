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
import 'package:firekart/core/state_manager/view_model.dart';
import 'package:firekart/domain/usecases/get_user_logged_in_status.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

import '../../../routes/app_router.gr.dart';
import '../../../routes/navigation_handler.dart';

@injectable
class CheckStatusViewModel extends ViewModel<int> {
  CheckStatusViewModel(
    this._getUserLoggedInStatusUseCase,
    ) : super(0);
  final GetUserLoggedInStatusUseCase _getUserLoggedInStatusUseCase;

  Future<void> checkStatus(bool checkForAccountStatusOnly) async {
    Future.delayed(
      Duration(seconds: checkForAccountStatusOnly ? 2 : 0),
      () async {
        final status = _getUserLoggedInStatusUseCase.execute();
        if (status) {
          await NavigationHandler.navigateTo(
            const HomeRoute(),
            navigationType: NavigationType.pushReplacement,
          );
        } else {
          await NavigationHandler.navigateTo(
            const LoginRoute(),
            navigationType: NavigationType.pushReplacement,
          );
        }
      },
    );
  }
}
