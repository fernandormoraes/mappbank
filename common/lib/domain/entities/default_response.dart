class DefaultResponse<T> {
  final String message;
  final List<Map<String, dynamic>> data;

  DefaultResponse(this.message, this.data);

  DefaultResponse.fromJson(Map<String, dynamic> json)
      : message = json['message'],
        data = json['data'];
}
