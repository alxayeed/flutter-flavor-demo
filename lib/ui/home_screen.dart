import 'package:flutter/material.dart';
import '../config/app_config.dart';

class HomeScreen extends StatelessWidget {
  final AppConfig config;

  const HomeScreen({super.key, required this.config});

  Widget featureRow(IconData icon, String feature, String status, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, size: 20, color: Theme.of(context).colorScheme.primary),
              const SizedBox(width: 8),
              Text(feature, style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          Text(status,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final appBarColor = config.flavor == AppFlavor.dev
        ? Colors.blue.shade700
        : Colors.green.shade700;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: true,
        title: Text(config.appName),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                config.flavor == AppFlavor.dev
                    ? 'Welcome to the Dev Build!'
                    : 'Welcome to the Production App!',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Flavor Features:',
                          style: Theme.of(context).textTheme.titleMedium),
                      const Divider(),
                      featureRow(Icons.link, 'Base URL', config.baseUrl, context),
                      featureRow(Icons.palette, 'Theme',
                          config.flavor == AppFlavor.dev ? 'Dev Theme' : 'Prod Theme', context),
                      featureRow(Icons.bug_report, 'Debug Banner',
                          config.flavor == AppFlavor.dev ? 'Visible' : 'Hidden', context),
                      featureRow(Icons.app_registration, 'App Name', config.appName, context),
                      featureRow(Icons.code, 'Console Logging',
                          config.enableConsoleLogs ? 'Enabled' : 'Disabled', context),
                      featureRow(Icons.cloud, 'Remote Logging',
                          config.flavor == AppFlavor.prod ? 'Enabled' : 'Disabled', context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
