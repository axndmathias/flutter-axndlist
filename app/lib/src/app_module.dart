import 'package:axndlist/src/configuration/configuration_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home/home_module.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/home', module: HomeModule()),
        ChildRoute(
          '/config',
          child: (context, args) => const ConfigurationPage(),
        ),
      ];
}
