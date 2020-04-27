import 'package:device_preview/device_preview.dart';
import 'package:epidemiologia_latam/app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as services;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await services.SystemChrome.setPreferredOrientations(
    [
      services.DeviceOrientation.portraitUp,
    ],
  );

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ),
  );
}
