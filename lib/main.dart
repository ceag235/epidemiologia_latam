import 'package:device_preview/device_preview.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as services;

import 'app.dart';
import 'app/locator.dart';
import 'utils/config_reader.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // * Supporting PortraitUp Orientation
  await services.SystemChrome.setPreferredOrientations(
    [
      services.DeviceOrientation.portraitUp,
    ],
  );

  // * Getting data from CI/CD
  await ConfigReader.initialize();

  // * Getting Inversion of control (Dependency Locator)
  configure();

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ),
  );
}
