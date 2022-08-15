import 'package:equatable/equatable.dart';

class TokenModel extends Equatable {
  final String accessToken;
  final String tokenType;
  final String refreshToken;
  final int expiresIn;
  final String scope;
  final String jti;

  const TokenModel({
    required this.accessToken,
    required this.tokenType,
    required this.refreshToken,
    required this.expiresIn,
    required this.scope,
    required this.jti,
  });

  factory TokenModel.fromJson(Map<String, dynamic> json) => TokenModel(
        accessToken: json["access_token"] as String,
        tokenType: json["token_type"] as String,
        refreshToken: json["refresh_token"] as String,
        expiresIn: json["expires_in"] as int,
        scope: json["scope"] as String,
        jti: json["jti"] as String,
      );

  Map<String, dynamic> toJson() {
    return {
      "accessToken": accessToken,
      "tokenType": tokenType,
      "refreshToken": refreshToken,
      "expiresIn": expiresIn,
      "scope": scope,
      "jti": jti,
    };
  }

  @override
  List<Object?> get props => [
        accessToken,
        tokenType,
        refreshToken,
        expiresIn,
        scope,
        jti,
      ];
}
