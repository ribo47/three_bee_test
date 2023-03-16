import 'package:dio/dio.dart';
import 'package:three_bee_test/utils/const.dart';

class LoginRepository {
  final dio = Dio();

  Future<bool> login(String email, String password) async {
    Response response;
    response = await dio.get(
      '${Constants.host}/${Constants.basePath}/auth/jwt/create/',
      data: {'email': email, 'password': password},

    );
    print(response.data.toString());
    return true;
  }
}
