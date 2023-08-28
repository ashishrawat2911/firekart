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

import 'package:auto_route/auto_route.dart';
import 'package:firekart/core/logger/app_logger.dart';
import 'package:firekart/presentation/routes/app_router.dart';
import 'package:flutter/material.dart';

class NavigationHandler {
  NavigationHandler();

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static final _appRouter = AppRouter(navigatorKey: navigatorKey);

  static RouteInformationParser<Object> get routeInformationParser =>
      _appRouter.defaultRouteParser();

  static RouterDelegate<Object> get routerDelegate => _appRouter.delegate();

  static Future navigateTo(
    PageRouteInfo route, {
    NavigationType navigationType = NavigationType.push,
  }) async {
    AppLogger.log('Navigating to ${route.routeName}');
    // ignore:avoid-dynamic
    // Future<T?> getNavigation() {
    switch (navigationType) {
      case NavigationType.push:
        return _appRouter.push(route);
      case NavigationType.pushReplacement:
        return _appRouter.replace(route);
      case NavigationType.popUntil:
        _appRouter.popUntilRouteWithName(route.routeName);
        return Future.value();
      case NavigationType.pushAndPopUntil:
        _appRouter.popUntilRoot();
        return _appRouter.replace(route);
    }
    // }

    // final perfMonitor = inject<PerformanceMonitor>();
    // await perfMonitor.startScreenEvent(
    //   route.routeName,
    //   properties: {
    //     'args': route.args.toString(),
    //   },
    // );
    // final navigation = getNavigation();
    // await perfMonitor.endScreenEvent(
    //   route.routeName,
    //   properties: {
    //     'args': route.args.toString(),
    //   },
    // );

    // return navigation;
  }

  static Future<bool> pop<T extends Object?>([T? arguments]) =>
      _appRouter.pop(arguments);

  static bool canNavigateBack() => _appRouter.canNavigateBack;
}

enum NavigationType { push, pushReplacement, popUntil, pushAndPopUntil }
