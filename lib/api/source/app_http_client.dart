import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:three_bee_test/api/app_error.dart';

import 'base_http_client.dart';

class AppHttpClient extends BaseHttpClient {
  AppHttpClient({
    BaseOptions? baseOptions,
  }) : super(

          baseOptions: baseOptions,
        );

  @override
  AppError manageError(Object e, StackTrace stacktrace) {
    debugPrint(e.toString());
    debugPrintStack(stackTrace: stacktrace);
    return const AppError(code: 998);
  }

}
