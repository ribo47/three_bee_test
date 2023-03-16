
import 'package:three_bee_test/api/hives_list/aries_response.dart';
import 'package:three_bee_test/api/login_repository/login_response.dart';
import 'package:three_bee_test/api/source/base_request.dart';
import 'package:three_bee_test/utils/const.dart';

class AriesRequest extends BaseRequest {
  final int page;

  AriesRequest(this.page)
      : super(
      baseUrl: Constants.baseUrl,
      endPoint: "apiaries/",
      method: RestMethod.get,
      responseDecoder: AriesResponse.fromJson,
  );

  @override
  Map<String, dynamic> get queryParameters => {"page": page};
}
