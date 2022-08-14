import 'package:flutter_template_clean_architecture/features/authantication/data/models/user_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AuthenticationLocalDataSource {
  void saveToken(String token) {}

  Future<String> getToken() async {
    return "";
  }

  void saveUser(UserModel user) {}

  Future<UserModel> getUser() async {
    var user = UserModel(
      customerId: 0,
      email: 'test@test.ru',
      confirmedEmail: false,
      phone: 7918000000,
    );
    return user;
  }

  void setIsAuth(bool isAuth){

  }
  Future<bool> isAuth()async{
    bool isAuth = true;
    return isAuth;
  }


  Future<void> setFirstVisit()async{

  }
  Future<bool> isFirstVisit() async {
    return false;
  }

  Future<bool> hasToken ()async{
    return true;
  }

  Future<void> signOut ()async{

  }
}
