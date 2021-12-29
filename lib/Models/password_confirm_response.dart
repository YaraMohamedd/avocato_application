// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';
PasswordConfirmResponse passwordConfirmResponseFromJson(String str) => PasswordConfirmResponse.fromJson(json.decode(str));
String passwordConfirmResponseToJson(PasswordConfirmResponse data) => json.encode(data.toJson());
class PasswordConfirmResponse {
  PasswordConfirmResponse({
    required this.result,
    required this.message,
    required this.userId,
  });
  bool result;
  String message;
  int userId;
  factory PasswordConfirmResponse.fromJson(Map<String, dynamic> json) => PasswordConfirmResponse(
    result: json["result"],
    message: json["message"],
    userId: json["user_id"],
  );
  Map<String, dynamic> toJson() => {
    "result": result,
    "message": message,
    "user_id": userId,
  };
}
