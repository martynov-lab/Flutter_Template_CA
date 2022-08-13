import 'package:dartz/dartz.dart';
import '../../../../common/utils/error/failur.dart';
import '../../../../common/utils/platform/network_info.dart';
import '../../domain/repositories/authentication_repository.dart';
import '../datasources/authentication_local_data_source.dart';
import '../datasources/authentication_remote_service.dart';
import '../models/user_model.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationService authenticationService;
  final AuthenticationLocalDataSource localDataSource;
  //final SharedPreferences sharedPreferences;
  final NetworkInfo networkInfo;

  AuthenticationRepositoryImpl({
    required this.authenticationService,
    required this.localDataSource,
   // required this.sharedPreferences,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, UserModel>> getUser(String token) async {
    if (await networkInfo.isConnected) {
      var resultOrError = await authenticationService.getUser(token);
      return resultOrError.fold((error) => Left(error), (result) async {
        return Right(result);
      });
    } else {
      return Left(ServerFailure('There is no Internet connection'));
    }
  }

  @override
  Future<Either<Failure, String>> signIn(
      String phoneNumber, String password) async {
    if (await networkInfo.isConnected) {
      final resultOrError = await authenticationService.signIn(phoneNumber, password);

      return resultOrError.fold((error) => Left(error), (token) async {
        // await sharedPreferences.setString('phone', phoneNumber);
        // await sharedPreferences.setString('password', password);
        // await sharedPreferences.setString('token', token);
        // await sharedPreferences.setBool('isAuth', true);
        final userOrError = await authenticationService.getUser(token.accessToken);
        return userOrError.fold((error) => Left(error), (user) async {
          localDataSource.setIsAuth(true);
          localDataSource.saveToken(token.accessToken);
          localDataSource.saveUser(user);
          // await sharedPreferences.setString(
          //     'userId', user.customerId.toString());

          return Right(token.accessToken);
        });
      });
    } else {
      return Left(ServerFailure('There is no Internet connection'));
    }
  }

  // @override
  // Future<Either<Failure, String>> signUp(
  //     String phoneNumber, String password) async {
  //   if (await networkInfo.isConnected) {
  //     final resultOrError = await authenticationService.signUp(phoneNumber, password);
  //     return resultOrError.fold((error) => Left(error), (result) async {
  //       await sharedPreferences.setString('phone', phoneNumber);
  //       await sharedPreferences.setString('password', password);
  //       return Right(result);
  //     });
  //   } else {
  //     return Left(ServerFailure('There is no Internet connection'));
  //   }
  // }
  //
  // @override
  // Future<Either<Failure, String>> confirm(
  //     String phoneNumber, String smsCode) async {
  //   if (await networkInfo.isConnected) {
  //     final resultOrError = await service.confirm(phoneNumber, smsCode);
  //     return resultOrError.fold((error) => Left(error), (result) async {
  //       await sharedPreferences.setString('token', result);
  //       await sharedPreferences.setBool('isAuth', true);
  //       final userOrError = await service.getUser(result);
  //       return userOrError.fold((error) => Left(error), (user) async {
  //         await sharedPreferences.setString(
  //             'userId', user.customerId.toString());
  //         return Right(result);
  //       });
  //     });
  //   } else {
  //     return Left(ServerFailure('There is no Internet connection'));
  //   }
  // }
  //
  // @override
  // Future<Either<Failure, String>> sendReset(String phone) async {
  //   if (await networkInfo.isConnected) {
  //     final resultOrError = await service.sendResetPassword(phone);
  //     return resultOrError.fold(
  //             (error) => Left(error), (result) => Right(result));
  //   } else {
  //     return Left(ServerFailure('There is no Internet connection'));
  //   }
  // }
  //
  // @override
  // Future<Either<Failure, String>> resendCode(String phone) async {
  //   if (await networkInfo.isConnected) {
  //     final resultOrError = await service.resendSmsCode(phone);
  //     return resultOrError.fold(
  //             (error) => Left(error), (result) => Right(result));
  //   } else {
  //     return Left(ServerFailure('There is no Internet connection'));
  //   }
  // }
  //
  // @override
  // Future<Either<Failure, String>> checkCode(
  //     String phone, String smsCode) async {
  //   if (await networkInfo.isConnected) {
  //     final resultOrError = await service.checkCodePassword(phone, smsCode);
  //     return resultOrError.fold(
  //             (error) => Left(error), (result) => Right(result));
  //   } else {
  //     return Left(ServerFailure('There is no Internet connection'));
  //   }
  // }
  //
  // @override
  // Future<Either<Failure, String>> setNewPassword(
  //     String phone, String password, String smsCode) async {
  //   await sharedPreferences.setString('phone', phone);
  //   await sharedPreferences.setString('password', password);
  //   if (await networkInfo.isConnected) {
  //     var resultOrError =
  //     await service.setNewPasswordPassword(phone, password, smsCode);
  //     return resultOrError.fold((error) => Left(error), (result) async {
  //       await sharedPreferences.setString('token', result);
  //       await sharedPreferences.setBool('isAuth', true);
  //       final userOrError = await service.getUser(result);
  //       return userOrError.fold((error) => Left(error), (user) async {
  //         await sharedPreferences.setString(
  //             'userId', user.customerId.toString());
  //         return Right(result);
  //       });
  //     });
  //   } else {
  //     return Left(ServerFailure('There is no Internet connection'));
  //   }
  // }

  // @override
  // Future<Either<Failure, String>> updateToken() async {
  //   // var phone = sharedPreferences.getString('phone') ?? '';
  //   // var password = sharedPreferences.getString('password') ?? '';
  //   if (await networkInfo.isConnected) {
  //     var resultOrError = await authenticationServiceauthenticationService.signIn(phone, password);
  //     return resultOrError.fold((error) => Left(error), (result) async {
  //       await sharedPreferences.setString('token', result);
  //       return Right(result);
  //     });
  //   } else {
  //     return Left(ServerFailure('There is no Internet connection'));
  //   }
  // }

  // @override
  // Future<Either<Failure, String>> addEmail(String email, String token) async {
  //   if (await networkInfo.isConnected) {
  //     var resultOrError = await service.addEmail(email, token);
  //     return resultOrError.fold((error) => Left(error), (result) async {
  //       return Right(result);
  //     });
  //   } else {
  //     return Left(ServerFailure('There is no Internet connection'));
  //   }
  // }

  // @override
  // Future<String> getEmail() async {
  //   var email = sharedPreferences.getString('email') ?? '';
  //   return email;
  // }
  //
  // @override
  // Future<void> persistToken(String token) async {
  //   await sharedPreferences.setString('token', token);
  //   return;
  // }
  //
  // @override
  // Future<String> getUserId() async {
  //   var userId = sharedPreferences.getString('userId') ?? '';
  //   return userId;
  // }
  //
  // @override
  // Future<String> getToken() async {
  //   var token = sharedPreferences.getString('token') ?? '';
  //   return token;
  // }
  //
  // @override
  // Future<bool> hasToken() async {
  //   var isAuth = sharedPreferences.getBool('isAuth') ?? false;
  //   return isAuth;
  // }
  //
  // @override
  // Future<void> deleteToken() async {
  //   await sharedPreferences.remove('token');
  //   await sharedPreferences.setBool('isAuth', false);
  //   return;
  // }
  //
  // @override
  // Future<void> deleteLogin() async {
  //   await sharedPreferences.remove('login');
  //   await sharedPreferences.remove('password');
  //
  //   return;
  // }
  //
  // @override
  // Future<void> verifyEmail() async {
  //   // if (user != null && !user.emailVerified) {
  //   //   return await user.sendEmailVerification();
  //   // }
  // }
  // @override
  // Future<void> setFirstVisit() async {
  //   var box = await Hive.openBox<bool>('FirstVisit');
  //   await box.put('value', false);
  //   await box.close();
  // }
  //
  // @override
  // Future<bool> isFirstVisit() async {
  //   var box = await Hive.openBox<bool>('FirstVisit');
  //   bool? isFirstVisit = await box.get('value') ?? true;
  //   await box.close();
  //   return isFirstVisit;
  // }
  //
  // @override
  // Future<void> setTwoStepAuth(bool isTwoFactor) async {
  //   var userId = sharedPreferences.getString('userId') ?? '';
  //   localDataSource.setTwoStepAuth(isTwoFactor, userId);
  // }
  //
  // @override
  // Future<bool> isTwoStepAut() async {
  //   var userId = sharedPreferences.getString('userId') ?? '';
  //   return await localDataSource.isTwoStepAut(userId);
  // }
  //
  // void setPinCode(String pin) {
  //   var userId = sharedPreferences.getString('userId') ?? '';
  //   localDataSource.setPin(pin, userId);
  // }
  //
  // @override
  // Future<String> getPinCode() async {
  //   var userId = sharedPreferences.getString('userId') ?? '';
  //   return await localDataSource.getPin(userId);
  // }
  //
  // @override
  // void deletePinCode() {
  //   localDataSource.deletePin();
  // }
  //
  // @override
  // void setEnableFaceID(bool value) {
  //   var userId = sharedPreferences.getString('userId') ?? '';
  //   localDataSource.setEnableFaceID(value, userId);
  // }
  //
  // @override
  // Future<bool> getEnableFaceID() async {
  //   var userId = sharedPreferences.getString('userId') ?? '';
  //   var isEnable = await localDataSource.getEnableFaceID(userId);
  //   return isEnable;
  // }
  //
  // @override
  // Future<void> signOut() async {
  //   deleteToken();
  //   deleteLogin();
  // }
}
