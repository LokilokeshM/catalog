import 'package:meta/meta.dart';
import 'dart:convert';

LoginBody? loginBodyFromJson(String str) =>
    LoginBody.fromJson(json.decode(str));

String loginBodyToJson(LoginBody? data) => json.encode(data!.toJson());

class LoginBody {
  LoginBody({
    required this.email,
  });

  final String? email;

  factory LoginBody.fromJson(Map<String, dynamic> json) => LoginBody(
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
      };
}
