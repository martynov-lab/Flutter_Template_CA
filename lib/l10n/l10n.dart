import 'package:flutter/material.dart';

class L10n {
  static final all = [
    const Locale('ru'),
    const Locale('us'),
    const Locale('en'),
    const Locale('ar'),
    const Locale('hi'),
    const Locale('es'),
    const Locale('de'),
  ];

  static String getFlag(String code) {
    switch (code) {
      case'ru':
        return '🇷🇺';
      case'us':
        return '🇺🇸';
      case 'ar':
        return '🇦🇪';
      case 'hi':
        return '🇮🇳';
      case 'es':
        return '🇪🇸';
      case 'de':
        return '🇩🇪';
      case 'en':
      default:
        return '🇷🇺';
    }
  }
}