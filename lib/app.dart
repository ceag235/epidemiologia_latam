import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/locator.dart';
import 'app/routes.gr.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Epidemiologia LatinoAmerica',
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      navigatorKey: locator<NavigationService>().navigatorKey,
      initialRoute: Routes.splashViewRoute,
      onGenerateRoute: Router().onGenerateRoute,
    );
  }
}
