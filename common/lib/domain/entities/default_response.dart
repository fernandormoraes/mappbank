class DefaultResponse {
  final String message;
  final Map<String, dynamic> data;

  DefaultResponse(this.message, this.data);

  DefaultResponse.fromJson(Map<String, dynamic> json)
      : message = json['message'],
        data = json['data'];
}
