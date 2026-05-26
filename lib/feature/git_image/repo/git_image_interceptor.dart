import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:oldtom_admin/config/secure_storage/app_secure_storage.dart';

class SecureStorageConst {
  static final keyUsername = 'username';
  static final keyAppPsw = 'appPsw';
  static final keyAccessToken = 'appAccessToken';
}

class GitImageInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Get User and appPsw
    final username = await AppSecureStorage().getSecureValue(
      key: SecureStorageConst.keyUsername,
    );
    final appPsw = await AppSecureStorage().getSecureValue(
      key: SecureStorageConst.keyAppPsw,
    );
    // Get Access Token
    final accessToken = await AppSecureStorage().getSecureValue(
      key: SecureStorageConst.keyAccessToken,
    );
    // Access with USERNAME and APP PASSWORD
    if (username != null || appPsw != null) {
      // Base64
      String base64Credentials = base64.encode(
        utf8.encode('$username:$appPsw'),
      );

      // Return Error if username or appPsw is null
      if (username == null || appPsw == null) {
        log('Credential not found');
        handler.next(options);
        return;
      }
      // Headers
      options.headers['Accept'] = 'application/json';
      options.headers['Authorization'] = 'Basic $base64Credentials';

      handler.next(options);
    }
    // Access with ACCESS TOKEN
    else if (accessToken != null) {
      // Base64
      String base64accessToken = base64.encode(
        utf8.encode('$username:$accessToken'),
      );

      // Headers
      options.headers['Accept'] = 'application/json';
      options.headers['Authorization'] = 'Basic $base64accessToken';

      handler.next(options);
    }
    // NO CREDENTIAL
    else {
      handler.next(options);
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final response = err.response;
    if (response != null) {
      log('Body: ${response.data}');
      // Get Error Message
      final String errorMex = statusErrorResponse(response);
      // Create new DioExeption instance with custom message
      final customError = err.copyWith(message: errorMex);
      // Reject the request with the custom error
      handler.reject(customError);
      return;
    }
  }
}

String statusErrorResponse(Response res) {
  switch (res.statusCode) {
    //log('RES: ${res.data}');
    case 401:
      return 'Unauthorized.';
    case 403:
      return 'Forbidden.';
    case 404:
      return 'Not Found.';
    case 400:
      String mex = res.data['error']['message'];
      if (mex.contains('Repository with this Slug and Owner already exists')) {
        return mex;
      } else {
        return 'Bad Request';
      }
    default:
      return 'Server Error.';
  }
}
