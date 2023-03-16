import 'package:three_bee_test/api/login_repository/login_request.dart';
import 'package:three_bee_test/api/login_repository/login_response.dart';
import 'package:three_bee_test/api/source/base_http_client.dart';

import 'login_repository.dart';

class LoginRepositoryImpl extends LoginRepository {
  LoginRepositoryImpl(BaseHttpClient remoteDataSource) : super(remoteDataSource);

  @override
  Future<bool> login(String email, String password) async {
    final res = await dataSource.retrieveData<LoginResponse>(LoginRequest(email, password));

    return res.fold((l) => false, (r) => true);
  }
}
