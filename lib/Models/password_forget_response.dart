// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

PasswordForgetResponse passwordForgetResponseFromJson(String str) => PasswordForgetResponse.fromJson(json.decode(str));

String passwordForgetResponseToJson(PasswordForgetResponse data) => json.encode(data.toJson());

class PasswordForgetResponse {
  PasswordForgetResponse({
    required this.result,
    required this.message,
    required this.userId,
  });
  bool result;
  String message;
  int userId;

  factory PasswordForgetResponse.fromJson(Map<String, dynamic> json) => PasswordForgetResponse(
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
