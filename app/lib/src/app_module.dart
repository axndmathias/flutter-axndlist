import 'package:axndlist/src/configuration/configuration_page.dart';
import 'package:axndlist/src/configuration/services/configuration_service.dart';
import 'package:axndlist/src/stores/app_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:realm/realm.dart';

import 'home/home_module.dart';
import 'shared/services/realm/realm_config.dart';

class AppModule extends Module {
  /// Dependency Injection Register
  @override
  List<Bind> get binds => [
        //old version Bind.singleton((i) => AppStore()),
        Bind.instance<Realm>(Realm(config)),
        AutoBind.factory<ConfigurationService>(ConfigurationServiceImpl.new),
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
