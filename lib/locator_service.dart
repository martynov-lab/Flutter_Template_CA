//import 'package:http/http.dart' as http;
import 'package:get_it/get_it.dart';
import 'package:flutter_template_clean_architecture/features/data/repositories/auth_repository_impl.dart';
import 'package:flutter_template_clean_architecture/features/presentation/bloc/authentication_bloc/authentication_bloc_bloc.dart';

import 'features/data/datasources/authentication_service.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! BLoC / Cubit
  // sl.registerLazySingleton(
  //   () => LoginBloc(
  //     authenticationBloc: sl<AuthenticationBloc>(),
  //     foremanRepository: sl<ForemanRepository>(),
  //   ),
  // );
  sl.registerFactory(
    () => AuthenticationBloc(
        sl()
    ),
  );
  // sl.registerFactory(
  //   () => LoadedUserCubit(
  //       userRepository: sl<UserRepository>(),
  //       foremanRepository: sl<ForemanRepository>()),
  // );
  // sl.registerFactory(
  //   () => ScannerCubit(
  //     foremanRepository: sl<ForemanRepository>(),
  //     userRepository: sl<UserRepository>(),
  //     locationRepository: sl<LocationRepository>(),
  //   ),
  // );
  // sl.registerFactory(
  //   () => WorkingDayCubit(workingDayRepository: sl<WorkingDayRepository>()),
  // );
  // sl.registerFactory(
  //   () => LoadedShiftCubit(shiftRepository: sl<ShiftRepository>()),
  // );
  //! Repository
  // sl.registerLazySingleton<ForemanRepository>(
  //   () => ForemanRepository(
  //     localDataSource: sl(),
  //     editingProfileService: sl(),
  //     networkInfo: sl(),
  //     sharedPreferences: sl(),
  //   ),
  // );

  // sl.registerLazySingleton<UserRepository>(
  //   () => UserRepository(
  //     userRemoteDataSource: sl(),
  //     userLocalDataSource: sl(),
  //     positionRemoteDataSource: sl(),
  //     positionLocalDataSource: sl(),
  //     networkInfo: sl(),
  //   ),
  // );

  // sl.registerLazySingleton<WorkingDayRepository>(
  //   () => WorkingDayRepository(
  //     remoteDataSource: sl(),
  //     localDataSource: sl<WorkingDayLocalDataSourceImpl>(),
  //     networkInfo: sl(),
  //   ),
  // );

  // sl.registerLazySingleton<ShiftRepository>(
  //   () => ShiftRepository(
  //     networkInfo: sl(),
  //     remoteDataSource: sl(),
  //   ),
  // );

  sl.registerLazySingleton<AuthenticationRepository>(
    () => AuthenticationRepositoryImpl(),
  );
  //!Data source
  // sl.registerLazySingleton<ForemanLocalDataSource>(
  //   () => ForemanLocalDataSourceImpl(),
  // );
  // sl.registerLazySingleton<UserLocalDataSource>(
  //   () => UserLocalDataSourceImpl(),
  // );
  // sl.registerLazySingleton(
  //   () => UserRemoteDataSource(),
  // );
  // sl.registerLazySingleton(
  //   () => PositionRemoteDataSource(),
  // );
  // sl.registerLazySingleton<PositionLocalDataSource>(
  //   () => PositionLocalDataSourceImpl(),
  // );
  // sl.registerLazySingleton(
  //   () => WorkingDayLocalDataSourceImpl(),
  // );
  // sl.registerLazySingleton(
  //   () => WorkingDayRemoteDataSource(),
  // );
  // sl.registerLazySingleton(
  //   () => ShiftRemoteDataSource(),
  // );
  // sl.registerLazySingleton(
  //   () => EditingProfileService(),
  // );
  sl.registerLazySingleton<AuthenticationService>(
    () => AuthenticationService(),
  );

  //! Core
  // sl.registerLazySingleton<NetworkInfo>(
  //   () => NetworkInfoImpl(sl()),
  // );

  //! External
  // final sharedPreferences = await SharedPreferences.getInstance();
  // sl.registerLazySingleton(() => sharedPreferences);
  // sl.registerLazySingleton(() => http.Client());
  // sl.registerLazySingleton(() => InternetConnectionChecker());
}
