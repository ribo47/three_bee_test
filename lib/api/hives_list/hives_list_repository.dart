import 'package:three_bee_test/api/app_error.dart';
import 'package:three_bee_test/api/hives_list/aries_response.dart';
import 'package:three_bee_test/api/repository/remote_repository.dart';
import 'package:three_bee_test/api/source/base_http_client.dart';
import 'package:dartz/dartz.dart';

abstract class HivesListRepository extends RemoteRepository {
  HivesListRepository(BaseHttpClient remoteDataSource) : super(remoteDataSource);

  Future<Either<AppError, AriesResponse>> getAries(int page);
}
