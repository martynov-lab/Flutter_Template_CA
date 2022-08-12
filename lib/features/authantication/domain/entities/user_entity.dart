import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final int id;
  final String name;

  const UserEntity({
    required this.id,
    required this.name,
  });

  @override
  List<Object?> get props => [
        id,
        name,
      ];
}
