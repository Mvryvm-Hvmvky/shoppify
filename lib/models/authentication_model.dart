class AuthenticationModel {
  final String message;
  final bool status;
  final int userId;

  AuthenticationModel({
    required this.message,
    required this.userId,
    required this.status,
  });

  factory AuthenticationModel.fromJson(Map<String, dynamic> json) {
    return AuthenticationModel(
      message: json["message"],
      userId: json["userId"],
      status: json["status"],
    );
  }
}
