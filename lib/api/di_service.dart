import 'package:get_it/get_it.dart';
import 'package:three_bee_test/api/login_repository/login_repository.dart';
import 'package:three_bee_test/api/source/base_http_client.dart';

import 'login_repository/login_repository_impl.dart';

final GetIt injector = GetIt.instance;

Future<void> init() async {
  injector.registerSingleton<LoginRepository>(LoginRepositoryImpl(baseHttpClient));
}

BaseHttpClient get baseHttpClient => injector<BaseHttpClient>();

LoginRepository get loginRepository => injector<LoginRepository>();
