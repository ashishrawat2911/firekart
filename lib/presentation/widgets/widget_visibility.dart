/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the Flutter Commerce open-source project, available at:
 * https://github.com/ashishrawat2911/flutter_commerce
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
import 'package:flutter/material.dart';

class WidgetVisibility extends StatelessWidget {
  const WidgetVisibility({Key? key, required this.visible, required this.child})
      : super(key: key);

  final bool visible;
  final Widget child;

  @override
  Widget build(BuildContext context) => !visible ? Container() : child;
}
