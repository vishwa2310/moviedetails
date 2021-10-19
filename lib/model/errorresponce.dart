class ErrorResponce {
  final String status_code;
  final String status_message;

  ErrorResponce({required this.status_code, required this.status_message,});

  factory ErrorResponce.fromJson(Map<String, dynamic> json) {
    return ErrorResponce(
      status_code: json["status_code"],
      status_message: json["status_message"],
    );
  }

}