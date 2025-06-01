import 'package:flutter/material.dart';
import '../config/app_config.dart';

ThemeData getAppTheme(AppFlavor flavor) {
  return flavor == AppFlavor.dev
      ? ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.deepPurple,
  )
      : ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.teal,
  );
}
