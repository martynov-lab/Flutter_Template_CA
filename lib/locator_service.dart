import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'common/utils/platform/network_info.dart';
import 'features/authantication/data/datasources/authentication_local_data_source.dart';
import 'features/authantication/data/datasources/authentication_remote_service.dart';
import 'features/authantication/data/repositories/auth_repository_impl.dart';
import 'features/authantication/domain/repositories/authentication_repository.dart';
import 'features/authantication/domain/usecases/auth_usecase.dart';
import 'features/authantication/presentation/bloc/authentication_bloc/authentication_bloc.dart';
import 'features/authantication/presentation/bloc/login_bloc/login_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! BLoC / Cubit
  sl.registerFactory(() => LoginBloc(
        useCase: sl<AuthUseCase>(),
      ));
  sl.registerFactory(() => AuthenticationBloc(
        useCase: sl<AuthUseCase>(),
      ));

  //! UseCases
  sl.registerLazySingleton(() => AuthUseCase(
        authenticationRepository: sl<AuthenticationRepository>(),
      ));
  //! Repository
  sl.registerLazySingleton<AuthenticationRepository>(
    () => AuthenticationRepositoryImpl(
      authenticationService: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
    ),
  );
  //! Data source
  sl.registerLazySingleton<AuthenticationService>(
    () => AuthenticationService(),
  );
  sl.registerLazySingleton<AuthenticationLocalDataSource>(
    () => AuthenticationLocalDataSource(
      sharedPreferences: sl(),
    ),
  );
  //! Core
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(sl()),
  );

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);

  sl.registerLazySingleton(() => InternetConnectionChecker());
}
