import 'package:flutter/cupertino.dart';

class ToggleObscurePassword extends ChangeNotifier {
  bool _isObscure = true;
  bool get isObscure => _isObscure;

  void toggle() {
    _isObscure = !_isObscure;
    notifyListeners();
  }

  bool _isObscureSecond = true;
  bool get isObscureSecond => _isObscureSecond;

  void toggleSecond() {
    _isObscureSecond = !_isObscureSecond;
    notifyListeners();
  }
}
