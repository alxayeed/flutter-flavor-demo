import 'package:flutter/material.dart';
import 'config/app_config.dart';
import 'theme/app_theme.dart';
import 'ui/home_screen.dart';

void runAppWithConfig(AppConfig config) {
  // Console Logging
  if (config.enableConsoleLogs) {
    // use any logger here
    debugPrint('🚀 '
        '${config.appName} is starting with [FLAVOR: ${config.flavor.name.toUpperCase()}] ');
  }

  // Remote Logging (e.g., Crashlytics, Sentry)
  if (config.enableRemoteLogs) {
    // Initialize your crash reporting tool here
    // Example:
    // await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);

  }

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: config.flavor != AppFlavor.prod,
      title: config.appName,
      theme: getAppTheme(config.flavor),
      home: HomeScreen(config: config),
    ),
  );
}
