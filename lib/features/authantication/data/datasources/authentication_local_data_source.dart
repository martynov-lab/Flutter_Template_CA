import 'package:flutter_template_clean_architecture/features/authantication/data/models/user_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationLocalDataSource {

  final SharedPreferences sharedPreferences;

  AuthenticationLocalDataSource({required this.sharedPreferences});
  void saveToken(String token) async{
    await sharedPreferences.setString('token', token);
  }

  Future<String> getToken() async {
    return sharedPreferences.getString('token') ?? '';
  }

  void saveUser(UserModel user) async{

  }

  Future<UserModel> getUser() async {
    var user = UserModel(
      customerId: 0,
      email: 'test@test.ru',
      confirmedEmail: false,
      phone: 7918000000,
    );
    return user;
  }

  void setIsAuth(bool isAuth)async{
    await sharedPreferences.setBool('isAuth', isAuth);
  }
  Future<bool> isAuth()async{
   var isAuth = sharedPreferences.getBool('isAuth') ?? false;
    return isAuth;
  }


  Future<void> setFirstVisit()async{
    await sharedPreferences.setBool('isFirstVisit', true);
  }
  Future<bool> isFirstVisit() async {
    return sharedPreferences.getBool('isFirstVisit') ?? false;
  }

  Future<bool> hasToken ()async{
    return sharedPreferences.getBool('isAuth') ?? false;
  }

  Future<void> signOut ()async{
    await sharedPreferences.remove('token');
    await sharedPreferences.setBool('isAuth', false);
    return;
  }
}
