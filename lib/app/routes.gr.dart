// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:epidemiologia_latam/ui/views/splash/splash_view.dart';
import 'package:epidemiologia_latam/ui/views/home/home_view.dart';

abstract class Routes {
  static const splashViewRoute = '/';
  static const homeViewRoute = '/home-view-route';
}

class Router extends RouterBase {
  //This will probably be removed in future versions
  //you should call ExtendedNavigator.ofRouter<Router>() directly
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.splashViewRoute:
        if (hasInvalidArgs<SplashViewArguments>(args)) {
          return misTypedArgsRoute<SplashViewArguments>(args);
        }
        final typedArgs = args as SplashViewArguments ?? SplashViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashView(key: typedArgs.key),
          settings: settings,
        );
      case Routes.homeViewRoute:
        if (hasInvalidArgs<HomeViewArguments>(args)) {
          return misTypedArgsRoute<HomeViewArguments>(args);
        }
        final typedArgs = args as HomeViewArguments ?? HomeViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => HomeView(key: typedArgs.key),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//SplashView arguments holder class
class SplashViewArguments {
  final Key key;
  SplashViewArguments({this.key});
}

//HomeView arguments holder class
class HomeViewArguments {
  final Key key;
  HomeViewArguments({this.key});
}
