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
        final userOrError = await authenticationService.getUser(token.accessToken);
        return userOrError.fold((error) => Left(error), (user) async {
          localDataSource.setIsAuth(true);
          localDataSource.saveToken(token.accessToken);
          localDataSource.saveUser(user);
          return Right(token.accessToken);
        });
      });
    } else {
      return Left(ServerFailure('There is no Internet connection'));
    }
  }
  @override
  Future<String>getToken()async{
    return await localDataSource.getToken();
  }
  @override
  Future<void> setFirstVisit()async{
    localDataSource.setFirstVisit();
  }
  @override
  Future<bool> isFirstVisit() async {
    return await localDataSource.isFirstVisit();
  }
  @override
  Future<bool> hasToken ()async{
    return localDataSource.hasToken();
  }

  @override
  Future<void> signOut()async {
    localDataSource.signOut();
  }
}
