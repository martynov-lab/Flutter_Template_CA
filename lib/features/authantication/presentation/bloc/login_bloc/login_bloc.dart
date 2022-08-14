import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import '../../../../../common/utils/error/failur.dart';
import '../../../domain/usecases/auth_usecase.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginBlocState> {
  final AuthUseCase useCase;

  LoginBloc({
    required this.useCase,
  }) : super(const LoginBlocState()) {
    on<PhoneChanged>(_onPhoneChanged);

    on<PasswordChanged>(_onPasswordChanged);
    on<PhoneUnfocused>(_onPhoneUnfocused);

    on<PasswordUnfocused>(_onPasswordUnfocused);
    on<LoginSubmitted>(_onLoginSubmitted);
    on<CleanState>(_onCleanState);
  }

  void _onPhoneChanged(PhoneChanged event, Emitter<LoginBlocState> emit) {
    final phone = Phone.dirty(event.phone);
    emit(state.copyWith(
      phone: phone.valid ? phone : Phone.pure(event.phone),
      status: Formz.validate([phone, state.password]),
    ));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginBlocState> emit) {
    final password = Password.dirty(event.password);
    emit(state.copyWith(
      password: password.valid ? password : Password.pure(event.password),
      status: Formz.validate([state.phone, password]),
      errorPassword: password.validator(event.password),
    ));
  }

  void _onPhoneUnfocused(PhoneUnfocused event, Emitter<LoginBlocState> emit) {
    final phone = Phone.dirty(state.phone.value);
    emit(state.copyWith(
      phone: phone,
      status: Formz.validate([phone, state.password]),
      errorMessage: state.phone.invalid ? 'Please enter a valid Phone' : '',
    ));
  }

  void _onPasswordUnfocused(
    PasswordUnfocused event,
    Emitter<LoginBlocState> emit,
  ) {
    final password = Password.dirty(state.password.value);
    emit(state.copyWith(
      password: password,
      status: Formz.validate([state.phone, password]),
      errorPassword: password.validator(state.password.value),
      errorMessage: state.phone.invalid ? 'Please enter a valid Password' : '',
    ));
  }

  void _onLoginSubmitted(
      LoginSubmitted event, Emitter<LoginBlocState> emit) async {
    final phone = Phone.dirty(state.phone.value);
    final password = Password.dirty(state.password.value);
    emit(state.copyWith(
      phone: phone,
      password: password,
      status: Formz.validate([phone, password]),
    ));
    if (state.status.isValidated) {
      //в репозитории получаем либо токен либо ошибку
      final failureOrToken = await useCase.signIn(
        phone.value,
        password.value,
      );

      failureOrToken.fold(
        //если ошибка, то эмитим состояние с полученой ошибкой
        (error) => emit(
          state.copyWith(
            errorMessage: _mapFailureToMessage(error),
            status: FormzStatus.submissionFailure,
          ),
        ),
        //если токен, то эмитим состояние 'залогинин' и передаем токен
        (token) {
          emit(state.copyWith(status: FormzStatus.submissionInProgress));
          Future<void>.delayed(const Duration(seconds: 1));
          emit(state.copyWith(
              status: FormzStatus.submissionSuccess, token: token));
        },
      );
    } else {
      state.copyWith(
        errorMessage: 'Please enter valid data',
        status: FormzStatus.submissionFailure,
      );
    }
  }

  void _onCleanState(CleanState event, Emitter<LoginBlocState> emit) {
    emit(state.copyWith(
      phone: Phone.pure(),
      password: Password.pure(),
      status: FormzStatus.pure,
    ));
  }
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
