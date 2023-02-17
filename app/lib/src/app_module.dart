import 'package:axndlist/src/configuration/configuration_page.dart';
import 'package:axndlist/src/stores/app_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        //old version Bind.singleton((i) => AppStore()),
        AutoBind.singleton(AppStore.new)
      ];
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/home', module: HomeModule()),
        ChildRoute(
          '/config',
          child: (context, args) => const ConfigurationPage(),
        ),
      ];
}
