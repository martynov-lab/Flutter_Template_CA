part of app_constants;

// all endpoint api
class ApiPath {
  static const _baseUrl =
      'https://crpt-backend-main-service.dev.testessential.net/';
  static const singUp = '$_baseUrl/v2/mobile/signup';
  static const singIn = '$_baseUrl/oauth/token';
  static const getUser = '$_baseUrl/v1/customer/profile';
  static const confirm = '$_baseUrl/v2/mobile/phone/confirm';
  static const sendResetPassword = '$_baseUrl/v2/mobile/password/reset';
  static const resendCode = '$_baseUrl/v2/mobile/phone/verify/resend';
  static const checkCodePassword =
      '$_baseUrl/v2/mobile/password/reset/confirm/code';
  static const setNewPasswordPassword =
      '$_baseUrl/v2/mobile/password/reset/confirm';
  static const addEmail = '$_baseUrl/v2/mobile/email/add';
}
