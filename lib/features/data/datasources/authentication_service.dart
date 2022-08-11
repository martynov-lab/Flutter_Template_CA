import 'package:flutter_template_clean_architecture/common/utils/error/exeption.dart';
import 'package:flutter_template_clean_architecture/features/data/models/user_model.dart';

// class AuthenticationService {
//   Future<UserModel> retrieveCurrentUser() async {
//     var user = UserModel(id: 1, name: 'Ivan');
//     if (user != null) {
//       return user;
//     } else {
//       throw ServerException();
//     }
//   }

//   Future<UserModel> signUp() async {
//     var user = UserModel(id: 1, name: 'Ivan');
//     if (user != null) {
//       return user;
//     } else {
//       throw ServerException();
//     }
//   }

//   Future<UserModel> signIn() async {
//     var user = UserModel(id: 1, name: 'Ivan');
//     if (user != null) {
//       return user;
//     } else {
//       throw ServerException();
//     }
//   }

//   Future<void> signOut() async {}
// }

class AuthenticationService {
  // Stream<String> retrieveCurrentUser() {
  //   return auth.authStateChanges().map((User? user) {
  //     if (user != null) {
  //       return UserModel(uid: user.uid, email: user.email);
  //     } else {
  //       return UserModel(uid: "uid");
  //     }
  //   });
  // }

  Future<String> signUp(UserModel user) async {
    try {
      String userCredential = 'userCredential';
      // .createUserWithEmailAndPassword(
      //     email: user.email!, password: user.password!);
      verifyEmail();
      return userCredential;
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<String?> signIn() async {
    try {
      String userCredential = 'userCredential';
      return userCredential;
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> verifyEmail() async {
    print('verifyEmail');
  }

  // Future<void> signOut() async {
  //   return await ;
  // }
}
