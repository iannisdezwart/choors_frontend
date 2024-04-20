import 'dart:convert';
import 'dart:io';

import 'package:choors_frontend/transport/api_response.dart';

class ApiTransport {
  final String baseUrl;

  String? token;

  ApiTransport({
    required this.baseUrl,
  });

  Future<ApiResponse> request<T>(
    String path, {
    String method = 'GET',
    bool authenticated = false,
    Map<String, dynamic> body = const {},
  }) async {
    final uri = Uri.parse('$baseUrl$path');
    final request = await HttpClient().openUrl(method, uri);
    request.headers.set('Content-Type', 'application/json');

    if (authenticated) {
      if (token == null) {
        throw Exception('No token provided');
      }

      request.headers.set('Authorization', 'Bearer $token');
    }

    final httpResponse = await request.close();
    final bodyString = await httpResponse.transform(utf8.decoder).join();

    return ApiResponse<T>(
      statusCode: httpResponse.statusCode,
      body: jsonDecode(bodyString),
    );
  }
}
