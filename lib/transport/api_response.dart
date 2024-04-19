class ApiResponse<T> {
  final int statusCode;
  final T body;

  ApiResponse({
    required this.statusCode,
    required this.body,
  });
}