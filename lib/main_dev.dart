import 'main_common.dart';
import 'config/app_config.dart';

void main() {
  final devConfig = AppConfig(
    appName: 'MyApp (Dev)',
    baseUrl: 'https://dev.api.example.com',
    flavor: AppFlavor.dev,
    enableConsoleLogs: true,
    enableRemoteLogs: false,
  );

  runAppWithConfig(devConfig);
}
