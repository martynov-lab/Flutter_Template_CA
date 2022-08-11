part of app_mixins;

/// use this mixin for all form field
mixin ValidatorMixin {
  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );
  static final RegExp _passwordRegExp = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
  );
  // example :
  String? validateTextFieldIsRequired(String? value) {
    if (value == null || value.trim().isEmpty) return 'this field is required';
    return null;
  }

  String? validateDropdownIsRequired(String? value) {
    if (value == null || value.trim().isEmpty) return 'please select item';
    return null;
  }

  // String? validateEmail(String? value) {
  //   if (_emailRegExp.hasMatch(value))
  //     return 'please select item';
  // }
}
