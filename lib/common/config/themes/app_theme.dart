import 'package:flutter/material.dart';

/// all custom application theme
class AppTheme {
  /// default application theme

  static ThemeData get lightTheme => ThemeData(
        //accentColor: Colors.black54,
        primaryColor: Colors.white,
        primaryColorDark: Colors.indigo[100],
        //! цвет circularProgressIndicator
        //colorScheme: ColorScheme.light(primary: Colors.black54),
        //! цвет TextField в фокусе
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.indigo),
        //! цвет фона AlertDialog
        dialogBackgroundColor: Colors.grey[400],
        //! Chip
        chipTheme: ChipThemeData(
          backgroundColor: Colors.grey,
          disabledColor: Colors.black26,
          selectedColor: Colors.indigo[100],
          secondarySelectedColor: Colors.indigo[300],
          padding: const EdgeInsets.all(3),
          showCheckmark: false,
          labelStyle: TextStyle(color: Colors.white),
          secondaryLabelStyle: TextStyle(color: Colors.grey[200]),
          brightness: Brightness.light,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          elevation: 5,
        ),
        //! TextTheme
        // textTheme: light.textTheme.copyWith(
        //   headline4: light.textTheme.headline4!.copyWith(
        //     color: Colors.black54,
        //     fontSize: 20,
        //   ),
        //   headline6: light.textTheme.headline6!.copyWith(
        //     color: Colors.black,
        //     fontSize: 18,
        //     fontWeight: FontWeight.bold,
        //   ),
        //   button: light.textTheme.button!.copyWith(
        //     color: Colors.black,
        //     fontSize: 18,
        //   ),
        //   bodyText1: light.textTheme.bodyText1!.copyWith(
        //     color: Colors.black,
        //     fontSize: 18,
        //   ),
        //   bodyText2: light.textTheme.bodyText2!.copyWith(
        //     color: Colors.black,
        //     fontSize: 16,
        //   ),
        // ),
        //! AppBar
        appBarTheme: AppBarTheme(
          color: Colors.black54,
          // textTheme: TextTheme(
          //   headline6: TextStyle(
          //     color: Colors.deepOrange[100],
          //     fontSize: 18,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          actionsIconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        //! textField
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.indigo),
          ),
          // hintStyle: TextStyle(
          //   color: Colors.black54,
          //   fontSize: 16,
          // ),
          // labelStyle: TextStyle(color: Colors.deepOrange[100]),
          // suffixStyle: TextStyle(
          //     backgroundColor: Colors.deepOrange[100], color: Colors.deepOrange[100]),
        ),
        //! Card
        cardTheme: CardTheme(
          color: Colors.indigo[100],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 10,
          margin: const EdgeInsets.all(15),
          clipBehavior: Clip.antiAliasWithSaveLayer,
        ),
        //! BottomNavigationBar
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.black54,
          selectedItemColor: Colors.indigo[100],
          showSelectedLabels: true,
        ),
        //! ElevatedButton
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.indigo[100],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            onPrimary: Colors.black,
            textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
      );

  // example :
  // static ThemeData get light => ThemeData();
  // static ThemeData get dark => ThemeData();
}
