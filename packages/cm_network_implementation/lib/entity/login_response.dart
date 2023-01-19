import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

@immutable
class LoginResponse {
  final User? user;

  const LoginResponse({this.user});

  @override
  String toString() => 'LoginResponse(user: $user)';

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        user: json['user'] == null
            ? null
            : User.fromJson(json['user'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'user': user?.toJson(),
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! LoginResponse) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => user.hashCode;
}

@immutable
class User {
  final int? id;
  final dynamic profile;
  final String? email;

  const User({this.id, this.profile, this.email});

  @override
  String toString() => 'User(id: $id, profile: $profile, email: $email)';

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] as int?,
        profile: json['profile'] as dynamic,
        email: json['email'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'profile': profile,
        'email': email,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! User) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => id.hashCode ^ profile.hashCode ^ email.hashCode;
}
