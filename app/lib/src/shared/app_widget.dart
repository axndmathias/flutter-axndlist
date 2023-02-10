import 'package:axndlist/src/shared/themes/themes.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: lightThheme,
      darkTheme: darkTheme,
      home: const MyHomePage(title: 'axndlist'),
    );
  }
}
