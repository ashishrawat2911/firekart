import 'package:flutter/material.dart';

import 'colors.gen.dart';

class Styles {
  static LinearGradient get appBackGradient => const LinearGradient(
        colors: [AppColors.color96C160, AppColors.color6EBA49],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
}
