import 'package:three_bee_test/api/repository/remote_repository.dart';
import 'package:three_bee_test/api/source/base_http_client.dart';

abstract class LoginRepository extends RemoteRepository {
  LoginRepository(BaseHttpClient remoteDataSource) : super(remoteDataSource);

  Future<bool> login(String email, String password);
}
