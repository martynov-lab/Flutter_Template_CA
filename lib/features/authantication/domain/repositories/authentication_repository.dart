import 'package:dartz/dartz.dart';
import 'package:flutter_template_clean_architecture/common/utils/error/failur.dart';

import '../entities/user_entity.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, UserEntity>> getUser(String token);
  Future<Either<Failure, String>> signIn(String phoneNumber, String password);
  Future<String>getToken();
  Future<void> setFirstVisit();
  Future<bool> isFirstVisit();
  Future<bool> hasToken ();
  Future<void> signOut();
}
