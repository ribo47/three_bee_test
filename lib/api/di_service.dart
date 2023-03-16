import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:three_bee_test/api/login_repository/login_repository.dart';
import 'package:three_bee_test/api/source/base_http_client.dart';

import 'login_repository/login_repository_impl.dart';
import 'source/app_http_client.dart';

final GetIt injector = GetIt.instance;

Future<void> init() async {
  injector.registerSingletonAsync(SharedPreferences.getInstance);
  injector.registerSingleton<BaseHttpClient>(AppHttpClient());
  injector.registerSingleton<LoginRepository>(LoginRepositoryImpl(baseHttpClient));
}

BaseHttpClient get baseHttpClient => injector<BaseHttpClient>();

SharedPreferences get prefs => injector.get<SharedPreferences>();

LoginRepository get loginRepository => injector<LoginRepository>();
