
import '../datasources/authentication_service.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  AuthenticationService service = AuthenticationService();

  @override
  Future<String> getCurrentUser() async {
    return await Future.delayed(const Duration(seconds: 2), () {
      return 'getCurrentUser';
    });
  }

  @override
  Future<String?> signUp(String user) async {
    return await Future.delayed(const Duration(seconds: 2), () {
      return 'signUp';
    });
  }

  @override
  Future<String?> signIn(String user) async {
    return await Future.delayed(const Duration(seconds: 2), () {
      return 'signIn';
    });
  }

  @override
  Future<void> signOut() async {
    print('signOut');
  }

  @override
  Future<String?> retrieveUserName(String user) async {
    return await Future.delayed(const Duration(seconds: 2), () {
      return 'retrieveUserName';
    });
  }
}

abstract class AuthenticationRepository {
  Future<String> getCurrentUser();
  Future<String?> signUp(String user);
  Future<String?> signIn(String user);
  Future<void> signOut();
  Future<String?> retrieveUserName(String user);
}
