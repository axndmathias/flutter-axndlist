import 'package:axndlist/src/shared/services/realm/models/configuration_model.dart';
import 'package:realm/realm.dart';

abstract class ConfigurationService {
  ConfigurationModel getConfiguration();
  void saveConfiguration(String themeModeName, DateTime? syncDate);
  void deleteAll();
}

class ConfigurationServiceImpl extends ConfigurationService {
  final Realm realm;

  ConfigurationServiceImpl(this.realm);

  @override
  ConfigurationModel getConfiguration() {
    return realm.all<ConfigurationModel>().first;
  }

  @override
  void saveConfiguration(String themeModeName, DateTime? syncDate) {
    final model = getConfiguration();
    realm.write(() {
      model.themeModeName = themeModeName;
      model.syncDate = syncDate;
    });
  }

  @override
  void deleteAll() {
    // TODO: implement deleteAll
  }
}
