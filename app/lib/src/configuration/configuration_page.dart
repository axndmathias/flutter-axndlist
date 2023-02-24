import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../stores/app_store.dart';

class ConfigurationPage extends StatefulWidget {
  const ConfigurationPage({super.key});

  @override
  State<ConfigurationPage> createState() => _ConfigurationPageState();
}

class _ConfigurationPageState extends State<ConfigurationPage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final appStore = context.watch<AppStore>((store) => store.themeMode);

    return Scaffold(
      appBar: AppBar(
        title: const Text('axndlist'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Settings',
              style: textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            const Text('Theme'),
            const SizedBox(height: 10),
            RadioListTile<ThemeMode>(
              value: ThemeMode.system,
              groupValue: appStore.themeMode.value,
              title: const Text('System'),
              onChanged: appStore.changeThemeMode,
            ),
            RadioListTile<ThemeMode>(
              value: ThemeMode.light,
              groupValue: appStore.themeMode.value,
              title: const Text('Light'),
              onChanged: appStore.changeThemeMode,
            ),
            RadioListTile<ThemeMode>(
              value: ThemeMode.dark,
              groupValue: appStore.themeMode.value,
              title: const Text('Dark'),
              onChanged: appStore.changeThemeMode,
            ),
            const Text('Data Control'),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: appStore.deleteApp,
              child: const Text('Clear cache and restart app'),
            ),
          ],
        ),
      ),
    );
  }
}
