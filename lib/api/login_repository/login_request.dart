
import 'package:three_bee_test/api/login_repository/login_response.dart';
import 'package:three_bee_test/api/source/base_request.dart';
import 'package:three_bee_test/utils/const.dart';

class LoginRequest extends BaseRequest {
  final String? mail;
  final String? password;

  LoginRequest(this.mail, this.password)
      : super(
      baseUrl: Constants.baseUrl,
      endPoint: "/auth/jwt/create",
      method: RestMethod.post,
      responseDecoder: LoginResponse.fromJson,
  );

  @override
  Map<String, dynamic> get body => {"mail": mail, "password": password};
}
