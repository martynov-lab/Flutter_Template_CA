import '../../domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required customerId,
    required email,
    required confirmedEmail,
    required phone,
  }) : super(
    customerId: customerId,
    email: email,
    confirmedEmail: confirmedEmail,
    phone: phone,
  );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      customerId: json['customerId'] ?? 00,
      email: json['email'] ?? '',
      confirmedEmail: json['confirmedEmail'] ?? false,
      phone: json['phone'] ?? '',
    );
  }

// Map<String, dynamic> toJson() {
//   return {
//     'id': id,
//     'name': name,
//   };
// }

// UserModel copyWith({
//   int? id,
//   String? name,
// }) {
//   return UserModel(
//     id: id ?? this.id,
//     name: name ?? this.name,
//   );
// }
}