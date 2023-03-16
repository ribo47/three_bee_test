import 'package:flutter/cupertino.dart';

import '../source/base_http_client.dart';
import 'base_repository.dart';

abstract class RemoteRepository extends BaseRepository {
  RemoteRepository(BaseHttpClient remoteDataSource) : super(remoteDataSource);

  @override
  @protected
  BaseHttpClient get dataSource => super.dataSource as BaseHttpClient;
}
