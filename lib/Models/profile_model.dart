// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

ProfileResponse ProfileFromJson(String str) => ProfileResponse.fromJson(json.decode(str));

String ProfileToJson(ProfileResponse data) => json.encode(data.toJson());

class ProfileResponse {
  ProfileResponse({
    required this.result,
    required this.message,
    required this.userInfo,
    required this.userId,
  });

  bool result;
  String message;
  List<String> userInfo;
  String userId;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) => ProfileResponse(
    result: json["result"],
    message: json["message"],
    userInfo: List<String>.from(json["user_info"].map((x) => x == null ? null : x)),
    userId: json["user_id"],
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "message": message,
    "user_info": List<dynamic>.from(userInfo.map((x) => x == null ? null : x)),
    "user_id": userId,
  };
}
