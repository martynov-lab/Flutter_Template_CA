import 'package:dartz/dartz.dart';
import 'package:flutter_template_clean_architecture/common/utils/error/failur.dart';
import 'package:flutter_template_clean_architecture/features/domain/entities/user_entity.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, UserEntity>> authenticate();
  Future<Either<Failure, UserEntity>> signUp();
  Future<Either<Failure, UserEntity>> signIn();
  Future<void> signOut();
  Future<Either<Failure, UserEntity>> getCurrentUser();
}
