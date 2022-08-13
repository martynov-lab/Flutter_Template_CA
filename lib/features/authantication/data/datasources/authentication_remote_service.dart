import 'dart:convert';
import 'package:dartz/dartz.dart';
//import 'package:http/http.dart' as http;

import '../../../../common/utils/error/failur.dart';
import '../models/token_model.dart';
import '../models/user_model.dart';

class AuthenticationService {
  Future<Either<Failure, UserModel>> getUser(
    String token,
  ) async {
    // var url = Uri.parse(ApiPath.getUser);
    // var response = await http.get(
    //   url,
    //   headers: <String, String>{
    //     'Content-Type': 'application/json; charset=UTF-8',
    //     'Accept': '*/*',
    //     'Authorization': 'Bearer $token',
    //   },
    // );

    if (/*response.statusCode == 200*/ true) {
      var resultData = json.decode("""{
        "customerId": 5000016012,
        "email": "martynov.a@routeamgroup.com",
        "confirmedEmail": false,
        "phone": "70000002291",
      }""");
      var result = UserModel.fromJson(resultData);
      return Right(result);
    } else {
      // final resultData = json.decode(response.body);
      // String result = resultData['message'];
      // return Left(ServerFailure(result));
    }
  }

  // Future<Either<Failure, String>> signUp(
  //     String phoneNumber, String password) async {
  //   var url = Uri.parse(ApiPath.singUp);
  //   var response = await http.post(url,
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //         'Accept': '*/*'
  //       },
  //       body: jsonEncode(<String, String>{
  //         'phone': phoneNumber,
  //         'password': password,
  //       }));
  //   if (response.statusCode == 200) {
  //     final resultData = json.decode(response.body);
  //     String result = resultData['result'];
  //     return Right(result);
  //   } else {
  //     final resultData = json.decode(response.body);
  //     String result = resultData['message'];
  //     return Left(ServerFailure(result));
  //   }
  // }

  // Future<Either<Failure, String>> confirm(
  //     String phoneNumber, String smsCode) async {
  //   var url = Uri.parse(ApiPath.confirm);
  //   var response = await http.post(url,
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //         'Accept': '*/*',
  //         'Authorization': 'Basic ZG9jOnNlY3JldA==',
  //       },
  //       body: jsonEncode(<String, String>{
  //         'fingerprint': '',
  //         'phone': phoneNumber,
  //         'smsCode': smsCode
  //       }));
  //   if (response.statusCode == 200) {
  //     final resultData = json.decode(response.body);
  //     String result = resultData['access_token'];
  //     return Right(result);
  //   } else {
  //     final resultData = json.decode(response.body);
  //     String result = resultData['message'];
  //     return Left(ServerFailure(result));
  //   }
  // }

  Future<Either<Failure, TokenModel>> signIn(
      String phoneNumber, String password) async {
    // var url = Uri.parse('${ApiPath.singIn}');
    //
    // var request = http.MultipartRequest('POST', url);
    // var headers = {
    //   'accept': 'application/json',
    //   'Authorization': 'Basic ZG9jOnNlY3JldA=='
    // };
    // request.fields.addAll({
    //   'grant_type': 'mobile_phone',
    //   'number': phoneNumber,
    //   'password': password
    // });
    // request.headers.addAll(headers);
    // var response = await request.send();
    // final respStr = await response.stream.bytesToString();
    final responseData = json.decode("""{
          "access_token": "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NzQzZmNiOS0xNzEwLTRmZDQtOGIxOC01ODc1MWUxYzg3YTkiLCJleHAiOjE2NjAzODM5MDUsImlhdCI6MTY2MDM4MDMwNX0.ZfAl8s0UVPNanc_BkjP7_uCqeYlUgerWnetHIm1IdyM",
          "token_type": "bearer",
          "refresh_token": "ac6f1461-0f75-42a3-aa70-006547d3b623",
          "expires_in": 3599,
          "scope": "read write",
          "jti": "943dc964-f78e-4e14-b1ba-6d81131d040f"
      }""");
    // if (response.statusCode == 200) {
    TokenModel token = TokenModel.fromJson(responseData);
    return Right(token);
    // } else {
    //   String message = responseData['message'];
    //   return Left(ServerFailure(message));
    // }
  }

  // Future<Either<Failure, String>> sendResetPassword(String phoneNumber) async {
  //   var url = Uri.parse(ApiPath.sendResetPassword);
  //   var response = await http.post(url,
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //         'Accept': '*/*'
  //       },
  //       body: jsonEncode(<String, String>{
  //         'phone': phoneNumber,
  //       }));
  //   if (response.statusCode == 200) {
  //     final resultData = json.decode(response.body);
  //     String result = resultData['result'];
  //     return Right(result);
  //   } else {
  //     final resultData = json.decode(response.body);
  //     String result = resultData['message'];
  //     return Left(ServerFailure(result));
  //   }
  // }
  //
  // Future<Either<Failure, String>> resendSmsCode(String phoneNumber) async {
  //   var url = Uri.parse(ApiPath.resendCode);
  //   var response = await http.post(url,
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //         'Accept': '*/*'
  //       },
  //       body: jsonEncode(<String, String>{
  //         'phone': phoneNumber,
  //       }));
  //   if (response.statusCode == 200) {
  //     final resultData = json.decode(response.body);
  //     String result = resultData['result'];
  //     return Right(result);
  //   } else {
  //     final resultData = json.decode(response.body);
  //     String result = resultData['message'];
  //     return Left(ServerFailure(result));
  //   }
  // }
  //
  // Future<Either<Failure, String>> checkCodePassword(
  //     String phone, String smsCode) async {
  //   var url = Uri.parse(ApiPath.checkCodePassword);
  //   var response = await http.post(url,
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //         'Accept': '*/*',
  //       },
  //       body: jsonEncode(<String, String>{'phone': phone, 'code': smsCode}));
  //   if (response.statusCode == 200) {
  //     final resultData = json.decode(response.body);
  //     String result = resultData['result'];
  //     return Right(result);
  //   } else {
  //     final resultData = json.decode(response.body);
  //     String result = resultData['message'];
  //     return Left(ServerFailure(result));
  //   }
  // }
  //
  // Future<Either<Failure, String>> setNewPasswordPassword(
  //   String phone,
  //   String password,
  //   String smsCode,
  // ) async {
  //   var url = Uri.parse(ApiPath.setNewPasswordPassword);
  //   var response = await http.post(url,
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //         'Accept': '*/*',
  //       },
  //       body: jsonEncode(<String, String>{
  //         'code': smsCode,
  //         'password': password,
  //         'phone': phone
  //       }));
  //   if (response.statusCode == 200) {
  //     final resultData = json.decode(response.body);
  //     String result = resultData['access_token'];
  //     return Right(result);
  //   } else {
  //     final resultData = json.decode(response.body);
  //     String result = resultData['message'];
  //     return Left(ServerFailure(result));
  //   }
  // }
  //
  // Future<Either<Failure, String>> addEmail(
  //   String email,
  //   String token,
  // ) async {
  //   var url = Uri.parse(ApiPath.addEmail);
  //   var response = await http.put(url,
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //         'Accept': '*/*',
  //         'Authorization': 'Bearer $token',
  //       },
  //       body: jsonEncode(<String, String>{
  //         'email': email,
  //       }));
  //   if (response.statusCode == 200) {
  //     final resultData = json.decode(response.body);
  //     String result = resultData['result'];
  //     return Right(result);
  //   } else {
  //     final resultData = json.decode(response.body);
  //     String result = resultData['message'];
  //     return Left(ServerFailure(result));
  //   }
  // }

  Future<void> signOut() async {}
}
