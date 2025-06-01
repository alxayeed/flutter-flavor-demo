enum AppFlavor { dev, prod }

class AppConfig {
  final String appName;
  final String baseUrl;
  final AppFlavor flavor;
  final bool enableConsoleLogs;
  final bool enableRemoteLogs;

  AppConfig({
    required this.appName,
    required this.baseUrl,
    required this.flavor,
    required this.enableConsoleLogs,
    required this.enableRemoteLogs,
  });
}
