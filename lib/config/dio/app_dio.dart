import 'package:dio/dio.dart';
import 'dio_err_interceptor.dart';

class AppDio {

  // Get token
  static const String _gitToken = String.fromEnvironment("gitToken");

  // Singleton
  factory AppDio() => _instance;
  static final AppDio _instance = AppDio._internal();

  // Dio Instance
  final Dio dio;

  // Private Constructor
  AppDio._internal()
    : dio = Dio(
        BaseOptions(
          connectTimeout: Duration(seconds: 10),
          receiveTimeout: Duration(seconds: 10),
          headers: {
            'Authorization': 'Bearer $_gitToken'
          }
        ),
      ) {
    // // Bitbucket Interceptor
    // dio.interceptors.add(GitImageInterceptor());
    // Error handling interceptor
    dio.interceptors.add(ErrorInterceptor());
    // // Log Interceptor
    // dio.interceptors.add(
    //   LogInterceptor(
    //     request: true,
    //     requestHeader: true,
    //     requestBody: true,
    //     responseHeader: true,
    //     responseBody: true,
    //     error: true,
    //   ),
    // );
  }
}
