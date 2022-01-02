import 'package:flutter/material.dart';
import 'package:core/core.dart';

class Styles {
  static LinearGradient get appBackGradient => LinearGradient(
        colors: [AppColors.color96C160, AppColors.color00A056],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
}
