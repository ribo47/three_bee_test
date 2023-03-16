import 'package:dio/dio.dart';

class AppError {
  final int code;
  final Response? response;

  const AppError({
    required this.code,
    this.response,
  });
}
