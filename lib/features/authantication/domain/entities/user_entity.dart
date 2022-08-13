import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final int customerId;
  final String email;
  final bool confirmedEmail;
  final String phone;

  const UserEntity({
    required this.customerId,
    required this.email,
    required this.confirmedEmail,
    required this.phone,
  });

  @override
  List<Object?> get props => [
    customerId,
    email,
    confirmedEmail,
    phone,
  ];
}
