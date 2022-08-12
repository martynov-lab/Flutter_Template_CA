import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template_clean_architecture/features/domain/repositories/authentication_repository.dart';

import '../../../data/models/user_model.dart';

part 'authentication_bloc_event.dart';
part 'authentication_bloc_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationRepository _authenticationRepository;

  AuthenticationBloc(this._authenticationRepository)
      : super(AuthenticationInitial()) {
    on<AuthenticationEvent>((event, emit) async {
      if (event is AuthenticationStarted) {
        var user = await _authenticationRepository.getCurrentUser();
        // if (user != "uid") {
          //String? displayName =
          //    await _authenticationRepository.retrieveUserName(user);
          //emit(AuthenticationSuccess(displayName: displayName));
        // } else {
        //   emit(AuthenticationFailure());
        // }
      } else if (event is AuthenticationSignedOut) {
        await _authenticationRepository.signOut();
        emit(AuthenticationFailure());
      }
    });
  }
}
