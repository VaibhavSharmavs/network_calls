library network_calls;

import 'package:dio/dio.dart';

/// This class is used to make network calls.
class APIClient {
  final String baseUrl;

  APIClient({required this.baseUrl});

  Dio _createDio(String baseUrl) {
    final Dio _dio = Dio();
    _dio.options.baseUrl = baseUrl;

    // (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
    //     (HttpClient client) {
    //   client.badCertificateCallback =
    //       (X509Certificate cert, String host, int port) => true;
    //   return client;
    // };
    return _dio;
  }
}
