import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template_clean_architecture/features/authantication/domain/entities/user_entity.dart';
import '../../../../../common/utils/error/failur.dart';
import '../../../domain/usecases/auth_usecase.dart';

part 'authentication_bloc_event.dart';

part 'authentication_bloc_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthUseCase useCase;

  AuthenticationBloc({
    required this.useCase,
  }) : super(AuthenticationUninitialized()) {
    on<AuthenticationEvent>((event, emit) async {
      if (event is AppStarted) {
        final hasToken = await useCase.hasToken();
        var isFirstVisit = await useCase.isFirstVisit();
        String token = await useCase.getToken();
        if (hasToken) {
          //или можно получить юзера из локального хранилища
          final failureOrUser = await useCase.getUser(token);
          failureOrUser.fold((error) =>
              emit(
                  AuthenticationError(error: _mapFailureToMessage(error))), (
              user) => emit(AuthenticationAuthenticated(user: user)));
        } else if (isFirstVisit) {
          emit(AuthenticationFirstVisit());
          useCase.setFirstVisit();
        } else {
          emit(AuthenticationUnauthenticated());
        }
      } else if (event is LoggedIn) {
        emit(AuthenticationLoading());
        final hasToken = await useCase.hasToken();
        var isFirstVisit = await useCase.isFirstVisit();
        if (hasToken) {
          var userOrError = await useCase.getUser(event.token);
          userOrError.fold(
                  (error) =>
                  emit(
                      AuthenticationError(error: _mapFailureToMessage(error))),
                  (user) => emit(AuthenticationAuthenticated(user: user)));
        } else if (isFirstVisit) {
          emit(AuthenticationFirstVisit());
          useCase.setFirstVisit();
        } else {
          emit(AuthenticationUnauthenticated());
        }
      } else if (event is LoggedOut) {
        await useCase.signOut();
        emit(AuthenticationUnauthenticated());
      }
    });
  }

  String _mapFailureToMessage(Failure failure) {
    if (failure is ServerFailure) {
      return failure.message;
    }
    if (failure is CacheFailure) {
      return failure.message;
    }
    return 'Unexpected Error';
  }
}
