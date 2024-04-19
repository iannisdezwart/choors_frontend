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
    Map<String, dynamic> body = const {},
  }) async {
    final uri = Uri.parse('$baseUrl$path');
    final response = await HttpClient().getUrl(uri);
    final httpResponse = await response.close();
    final bodyString = await httpResponse.transform(utf8.decoder).join();

    return ApiResponse<T>(
      statusCode: httpResponse.statusCode,
      body: jsonDecode(bodyString),
    );
  }
}
