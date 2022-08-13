import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

// Biometric Data verification service
class Biometric {
  final _auth = LocalAuthentication();

  Future<bool> biometricSupported() async {
    var isBiometricSupported = await _auth.isDeviceSupported();
    return isBiometricSupported;
  }

  Future<List<BiometricType>> getAvailableBiometrics() async {
    var getAvailableBiometrics = await _auth.getAvailableBiometrics();
    return getAvailableBiometrics;
  }

  Future<bool> checkBiometrics() async {
    var canCheckBiometrics = await _auth.canCheckBiometrics;
    return canCheckBiometrics;
  }

  Future<bool> authenticate() async {
    var isAuthenticated = false;
    var isBiometricSupported = await biometricSupported();
    var canCheckBiometrics = await checkBiometrics();

    if (isBiometricSupported && canCheckBiometrics) {
      try {
        isAuthenticated = await _auth.authenticate(
          localizedReason: 'Scan your fingerprint to authenticate',
          options: const AuthenticationOptions(
            useErrorDialogs: true,
            stickyAuth: true,
            biometricOnly: true,
          ),
        );
      } on PlatformException catch (e) {
        //print('Error biometric: ${e.code} - ${e.message}');
        return false;
      }
    }
    return isAuthenticated;
  }
}
