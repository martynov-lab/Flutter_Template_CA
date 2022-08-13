part of app_mixins;

/// use this mixin for all form field
mixin ValidatorMixin {
  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );
  static final RegExp _phoneNumberRegExp = RegExp(
    r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$',
  );
  static final RegExp _passwordRegExp = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$',
  );

  String? validateTextFieldIsRequired(String? value) {
    if (value == null || value.trim().isEmpty) return 'This field is required';
    return null;
  }

  String? validateEmail(String value) {
    if (_emailRegExp.hasMatch(value)) return 'Please enter a valid email';
  }

  String? validatePhoneNumber(String value) {
    if (_phoneNumberRegExp.hasMatch(value))
      return 'Please enter a valid phone number';
  }

  String? validatePassword(String value) {
    if (_passwordRegExp.hasMatch(value)) return 'Please enter a valid password';
  }

  bool isValidEmail(String email) {
    return _emailRegExp.hasMatch(email);
  }

  bool isValidPhoneNumber(String password) {
    return _phoneNumberRegExp.hasMatch(password);
  }

  bool isValidPassword(String password) {
    return _passwordRegExp.hasMatch(password);
  }
}
