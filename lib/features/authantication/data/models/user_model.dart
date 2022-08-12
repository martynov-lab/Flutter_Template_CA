import 'package:flutter_template_clean_architecture/features/domain/entities/user_entity.dart';

class UserModel{
  String? uid;
  bool? isVerified;
  final String? email;
  final String? phone;
  String? password;
  UserModel({this.uid, this.email, this.phone, this.password, this.isVerified});

  Map<String, dynamic> toMap() {
    return {
      'email': email,
    };
  }

  UserModel.fromJson(Map<String, dynamic> json)
      : uid = json['id'],
        phone = json["phone"] ?? '',
        email = json["email"];

  UserModel copyWith({
    bool? isVerified,
    String? uid,
    String? email,
    String? password,
    String? displayName,
    int? age,
  }) {
    return UserModel(
        uid: uid ?? this.uid,
        email: email ?? this.email,
        password: password ?? this.password,
        isVerified: isVerified ?? this.isVerified);
  }
}
