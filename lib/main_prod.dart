import 'main_common.dart';
import 'config/app_config.dart';

void main() {
  final prodConfig = AppConfig(
    appName: 'MyApp',
    baseUrl: 'https://api.example.com',
    flavor: AppFlavor.prod,
    enableConsoleLogs: false,
    enableRemoteLogs: true,
  );

  runAppWithConfig(prodConfig);
}
