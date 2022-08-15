import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../../../features/authantication/data/models/country_region_model.dart';
import '../helpers/ascending_sort.dart';

// Region selection service for determining the phone number code
class CountryProvider extends ChangeNotifier {
  final String _dataPath = 'assets/json/country_codes.json';
  List<CountryModel> _countries = [];
  List<CountryModel> get countries => _countries;
  set countries(List<CountryModel> items) {
    _countries = items;
    notifyListeners();
  }

  void cleanSearch() {
  
    _selected = CountryModel(
      code: 'RU',
      flag: '🇷🇺',
      name: 'Russia',
      nativeName: 'Россия',
      phone: '7',
    );
    _isSelected = false;
    notifyListeners();
  }

  bool _isSearch = false;
  bool get isSearch => _isSearch;
  set isSearch(bool items) {
    _isSearch = items;
    notifyListeners();
  }

  bool _isSelected = false;
  bool get isSelected => _isSelected;
  set isSelected(bool items) {
    _isSelected = items;
    notifyListeners();
  }

  CountryModel _selected = CountryModel(
    code: 'RU',
    flag: '🇷🇺',
    name: 'Russia',
    nativeName: 'Россия',
    phone: '7',
  );
  CountryModel get selected => _selected;
  set selected(CountryModel item) {
    _selected = item;
    print('selected: ${selected.flag}');
    notifyListeners();
  }

  // Loading data from a json file
  Future<void> loadCountries() async {
    final data = await rootBundle.loadString(_dataPath);
    final countriesJson = json.decode(data);

    _countries = countriesJson.keys.map<CountryModel>((code) {
      final json = countriesJson[code];
      final newJson = json
        ..addAll({
          'code': code.toLowerCase(),
          'flag': countryCodeToEmoji(code),
        });
      return CountryModel.fromJson(newJson);
    }).toList()
      ..sort(Sort.ascendingSort);
    notifyListeners();
  }

  // The method converts the country code into an emoji to display as a string
  String countryCodeToEmoji(String countryCode) {
    final firstLetter = countryCode.codeUnitAt(0) - 0x41 + 0x1F1E6;
    final secondLetter = countryCode.codeUnitAt(1) - 0x41 + 0x1F1E6;
    return String.fromCharCode(firstLetter) + String.fromCharCode(secondLetter);
  }

  // functionality for saving the entered data after switching and returning to the page

  String _phoneNumber = '';
  String get phoneNumber => _phoneNumber;
  set phoneNumber(String items) {
    _phoneNumber = items;
    notifyListeners();
  }

  String _email = '';
  String get email => _email;
  set email(String items) {
    _email = items;
    notifyListeners();
  }

  String _password = '';
  String get password => _password;
  set password(String items) {
    _password = items;
    notifyListeners();
  }

  void cleanInput() {
    _phoneNumber = '';
    _email = '';
    _password = '';
  }
}
