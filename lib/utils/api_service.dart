import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:weather_app/utils/appLog.dart';

class ApiService {
  final Dio _dio;

  ApiService()
      : _dio = Dio(BaseOptions(
    baseUrl: 'https://opendata.cwa.gov.tw/api/v1/rest/datastore',
    connectTimeout: Duration(seconds: 5),
    receiveTimeout: Duration(seconds: 3),
    headers: {
      'Authorization': 'CWA-310C3EBA-EBBD-4C52-B624-75577C2741BF',
    },
  )) {
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        AppLog('Request: ${options.method} ${options.path}');
        AppLog('Full URL: ${options.uri.toString()}');  // 打印完整的 URL
        if (options.data != null) {
          AppLog('Data: ${jsonEncode(options.data)}');
        }
        return handler.next(options); // continue
      },
      onResponse: (Response response, ResponseInterceptorHandler handler) {
        AppLog('Response: ${response.statusCode} ${response.statusMessage}');
        AppLog('Data: ${jsonEncode(response.data)}');
        return handler.next(response); // continue
      },
      onError: (DioError e, ErrorInterceptorHandler handler) {
        AppLog('Error: ${e.message}');
        if (e.response != null) {
          AppLog('Error Data: ${jsonEncode(e.response?.data)}');
        }
        return handler.next(e); // continue
      },
    ));
  }

  Dio get dio => _dio;
}