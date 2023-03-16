import 'package:three_bee_test/api/app_error.dart';
import 'package:three_bee_test/api/di_service.dart';
import 'package:three_bee_test/api/hives_list/aries_request.dart';
import 'package:three_bee_test/api/hives_list/aries_response.dart';
import 'package:three_bee_test/api/hives_list/hives_list_repository.dart';
import 'package:three_bee_test/api/source/base_http_client.dart';
import 'package:dartz/dartz.dart';

class HivesListRepositoryImpl extends HivesListRepository {
  HivesListRepositoryImpl(BaseHttpClient remoteDataSource) : super(remoteDataSource);

  @override
  Future<Either<AppError, AriesResponse>> getAries(int page) async {
    final res = await dataSource.retrieveData<AriesResponse>(AriesRequest(page));

    return res.fold((l) => Left(l), (r) async {
      return Right(r.data!);
    });
  }
}
