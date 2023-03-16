import 'package:dio/dio.dart';

dynamic defaultDecoder(dynamic) => null;

abstract class BaseRequest {
  final String baseUrl;

  final String endPoint;

  final RestMethod method;

  final dynamic Function(dynamic) decoder;

  Map<String, String> get headers => {
        Headers.contentTypeHeader: Headers.jsonContentType,
        Headers.acceptHeader: Headers.jsonContentType,
      };


  Map<String, dynamic> get body => {};

  Map<String, dynamic> get queryParameters => {};

  ResponseType get responseType => ResponseType.json;

  String get completeUrl {
      return '$baseUrl/$endPoint';
  }

  int get receiveTimeout => 30000;

  int get sendTimeout => 30000;

  BaseRequest({
    required String baseUrl,
    required this.endPoint,
    required this.method,
    dynamic Function(dynamic)? responseDecoder,
  })  : baseUrl = baseUrl,
        decoder = responseDecoder ?? defaultDecoder;
}

enum RestMethod {
  get,
  post,
  patch,
  put,
  delete,
}