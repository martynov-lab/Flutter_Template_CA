import 'package:dartz/dartz.dart';

import '../../../../common/utils/error/failur.dart';
import '../entities/user_entity.dart';
import '../repositories/authentication_repository.dart';

class AuthUseCase {
  final AuthenticationRepository authenticationRepository;

  AuthUseCase({required this.authenticationRepository});

  Future<Either<Failure, UserEntity>> getUser(String token) async {
    return authenticationRepository.getUser(token);
  }

  Future<Either<Failure, String>> signIn(String phoneNumber, String password) {
    return authenticationRepository.signIn(phoneNumber, password);
  }

  Future<String> getToken() async {
    return await authenticationRepository.getToken();
  }

  Future<void> signOut() async {
    authenticationRepository.signOut();
  }

  Future<void> setFirstVisit() async {
    authenticationRepository.setFirstVisit();
  }

  Future<bool> isFirstVisit() async {
    return await authenticationRepository.isFirstVisit();
  }

  Future<bool> hasToken() async {
    return await authenticationRepository.hasToken();
  }
}
