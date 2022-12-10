import 'package:core/state_manager/base_view.dart';
import 'package:flutter/material.dart';

import '../view_model/check_status_bloc.dart';

class CheckStatusScreen extends StatelessWidget {
  const CheckStatusScreen({Key? key, this.checkForAccountStatusOnly = false})
      : super(key: key);

  final bool checkForAccountStatusOnly;

  @override
  Widget build(BuildContext context) {
    return BaseView<CheckStatusViewModel, int>(
      onViewModelReady: (viewModel) {
        viewModel.checkStatus(checkForAccountStatusOnly);
      },
      builder: (context, viewModel, state) => const Scaffold(
        body: Center(
          child: SizedBox(
            height: 70,
            width: 70,
            child: CircularProgressIndicator(
              strokeWidth: 7,
            ),
          ),
        ),
      ),
    );
  }
}
