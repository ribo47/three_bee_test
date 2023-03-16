import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:three_bee_test/api/app_error.dart';
import 'package:three_bee_test/api/source/base_request.dart';

import 'base_data_source.dart';

abstract class BaseHttpClient extends BaseDataSource<BaseRequest> {
  late Dio _dioClient;

  BaseHttpClient({
    BaseOptions? baseOptions,
    bool useLogInterceptor = true,
  }) {
    setup(
      baseOptions,
      useLogInterceptor,
    );
  }


  Dio get http => _dioClient;

  void setup(
    BaseOptions? baseOptions,
    bool useLogInterceptor,
  ) {
    _dioClient = Dio(baseOptions);

    (_dioClient.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate = (client) {
      late HttpClient httpClient;
      SecurityContext sc = SecurityContext();
      httpClient = HttpClient(context: sc);

      httpClient.badCertificateCallback = (X509Certificate cert, String host, int port) {
        return true;
      };

      return httpClient;
    };
  }

  @override
  Future<Either<AppError, Response<T>>> retrieveData<T>(BaseRequest request) async {
    try {
      Options options = Options(
        headers: request.headers,
        method: request.method.name,
        receiveDataWhenStatusError: true,
        receiveTimeout: Duration(milliseconds: request.receiveTimeout),
        sendTimeout: Duration(milliseconds: request.sendTimeout),
        responseType: request.responseType,
      );

      Response response = await _dioClient.request(
        request.completeUrl,
        data: request.body,
        options: options,
        queryParameters: request.queryParameters,
      );

      final decoder = request.decoder;
      final data = decoder(response.data);

      return Right(_createResponse<T>(response, data));
    } catch (e, stacktrace) {
      return Left(manageError(e, stacktrace));
    }
  }

  Response<T> _createResponse<T>(Response response, dynamic data) {
    return Response<T>(
      data: data,
      headers: response.headers,
      isRedirect: response.isRedirect,
      requestOptions: response.requestOptions,
      redirects: response.redirects,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      extra: response.extra,
    );
  }

  AppError manageError(Object e, StackTrace stacktrace);
}
