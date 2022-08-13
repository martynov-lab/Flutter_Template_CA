import 'package:dartz/dartz.dart';
import 'package:flutter_template_clean_architecture/common/utils/error/failur.dart';

import '../entities/user_entity.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, UserEntity>> getUser(String token);
 // Future<Either<Failure, String>> signUp(String phoneNumber, String password);
  Future<Either<Failure, String>> signIn(String phoneNumber, String password);
  // Future<Either<Failure, String>> confirm(String phoneNumber, String smsCode);
  // Future<Either<Failure, String>> sendReset(String phone);
  // Future<Either<Failure, String>> resendCode(String phone);
  // Future<Either<Failure, String>> checkCode(String phone, String smsCode);
  // Future<Either<Failure, String>> setNewPassword(
  //     String phone, String password, String smsCode);
  // Future<Either<Failure, String>> updateToken();
  // Future<Either<Failure, String>> addEmail(String email, String token);
  // Future<String> getEmail();
  // Future<void> persistToken(String token);
  // Future<String> getUserId();
  // Future<String> getToken();
  // Future<bool> hasToken();
  // Future<void> deleteToken();
  // Future<void> deleteLogin();
  // Future<void> verifyEmail();
  // Future<void> setFirstVisit();
  // Future<bool> isFirstVisit();
  // Future<void> setTwoStepAuth(bool isTwoFactor);
  // Future<bool> isTwoStepAut();
  // Future<void> signOut();
  // void setPinCode(String pin);
  // Future<String> getPinCode();
  // void deletePinCode();
  // void setEnableFaceID(bool value);
  // Future<bool> getEnableFaceID();
}
