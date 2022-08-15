import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constans/app_constants.dart';
import '../../constans/colors.dart';

// All custom application theme
class AppTheme {
  // Default application theme
  final ThemeData _themeLight = ThemeData.light();
  final ThemeData _themeDark = ThemeData.dark();

  ThemeData get themeLight => _themeLight.copyWith(
        primaryColor: ColorApp.backgroundLight,
        primaryColorDark: ColorApp.textButton,
        indicatorColor: ColorApp.progressBarInterPinDotLight,
        brightness: Brightness.light,
        disabledColor: ColorApp.chipsBackgroundLight,
        scaffoldBackgroundColor: ColorApp.backgroundLight,
        buttonColor: ColorApp.dotWelcomScreen,

        iconTheme: const IconThemeData(
          color: ColorApp.backgroundIcon,
        ),

        buttonTheme: ButtonThemeData(
          buttonColor: ColorApp.yellowButton,
          disabledColor: ColorApp.notActiveButton,
        ),
        //primaryColorDark: ColorApp.backgroundLight,
        //primaryColorLight: ColorApp.backgroundLight,

        //! цвет circularProgressIndicator
        //colorScheme: ColorScheme.light(primary: Colors.black54),

        colorScheme: ColorScheme.fromSwatch(
            //primarySwatch: Colors.indigo,
            //accentColor: ColorApp.yellowButton,
            ),
        //! цвет фона AlertDialog
        dialogBackgroundColor: ColorApp.backgroundLight,
        //! Chip
        chipTheme: ChipThemeData(
          backgroundColor: ColorApp.chipsBackgroundLight,
          disabledColor: ColorApp.chipsBackgroundLight,
          selectedColor: ColorApp.chipsSelected,
          secondarySelectedColor: ColorApp.chipsSelected,
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
          showCheckmark: false,
          labelStyle: const TextStyle(
              letterSpacing: -0.3,
              color: ColorApp.chipsText,
              fontFamily: Font.sfText,
              fontSize: 12,
              fontWeight: FontWeight.w500),
          secondaryLabelStyle: const TextStyle(
              color: ColorApp.chipsTextSelected,
              fontFamily: Font.sfText,
              fontSize: 14,
              fontWeight: FontWeight.w500),
          brightness: Brightness.light,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 0,
        ),
        //! TextTheme
        textTheme: _textLight(_themeLight.textTheme),
        //! AppBar
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            //systemNavigationBarColor: Color(0xFF000000),
            systemNavigationBarDividerColor: null,
            statusBarColor: Colors.transparent,
            systemNavigationBarIconBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
          ),
          color: Colors.transparent,
          elevation: 0,
          actionsIconTheme: IconThemeData(
            color: ColorApp.backgroundIcon,
          ),
          iconTheme: IconThemeData(
            color: ColorApp.backgroundIcon,
          ),
        ),
        //! textField
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            borderSide: BorderSide(
              color: ColorApp.borderFocuse, //темная такая же
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            borderSide: BorderSide(color: Colors.transparent, width: 0),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            borderSide: BorderSide(
              color: ColorApp.error, //темная такая же
              width: 1,
            ),
          ),
          hintStyle: TextStyle(
              fontFamily: Font.sfText,
              color: ColorApp.inputLabel,
              fontSize: 16,
              letterSpacing: 0),
          labelStyle: TextStyle(
            color: ColorApp.labelLight,
            fontSize: 16,
            fontFamily: Font.sfText,
          ),
          fillColor: ColorApp.fillColorLight,
          suffixIconColor: ColorApp.inputSuffixLight,
          suffixStyle: TextStyle(
            fontFamily: Font.sfText,
            color: ColorApp.inputSuffixLight,
          ),
          prefixIconColor: ColorApp.inputSuffixLight,
          prefixStyle: TextStyle(
            fontFamily: Font.sfText,
            fontSize: 16,
            color: ColorApp.labelLight,
          ),
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
        // bottomNavigationBarTheme: BottomNavigationBarThemeData(
        //   backgroundColor: Colors.black54,
        //   selectedItemColor: Colors.indigo[100],
        //   showSelectedLabels: true,
        // ),
        //! ElevatedButton
        //! ElevatedButton
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(8),
            minimumSize: const Size.fromHeight(55),
            elevation: 0,
            primary: ColorApp.yellowButton,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28.0)),
            onPrimary: ColorApp.textButton,
            textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: Font.sfText),
          ),
        ),
      );

  ThemeData get themeDark => _themeDark.copyWith(
        primaryColor: ColorApp.backgroundDark,
        primaryColorDark: ColorApp.backgroundYellowStain,
        disabledColor: Colors.transparent,
        buttonColor: ColorApp.dotWelcomScreenDark,

        indicatorColor: ColorApp.progressBarInterPinDot,
        brightness: Brightness.dark,
        //! Icon
        iconTheme: IconThemeData(
          color: ColorApp.backgroundLight,
        ),
        //! AppBar
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            //systemNavigationBarColor: Color(0xFF000000),
            systemNavigationBarDividerColor: null,
            statusBarColor: Colors.transparent,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark,
          ),
          color: Colors.transparent,
          elevation: 0,
          actionsIconTheme: IconThemeData(
            color: ColorApp.backgroundLight,
          ),
          iconTheme: IconThemeData(
            color: ColorApp.backgroundLight,
          ),
        ),
        //! Button
        buttonTheme: ButtonThemeData(
          buttonColor: ColorApp.yellowButton,
          disabledColor: ColorApp.notActiveButtonDark,
        ),
        //! Chip
        chipTheme: ChipThemeData(
          backgroundColor: ColorApp.chipsBackgroundDark,
          disabledColor: ColorApp.chipsBackgroundDark,
          selectedColor: ColorApp.chipsSelected,
          secondarySelectedColor: ColorApp.chipsSelected,
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
          showCheckmark: false,
          labelStyle: const TextStyle(
              letterSpacing: -0.3,
              color: ColorApp.chipsText,
              fontFamily: Font.sfText,
              fontSize: 12,
              fontWeight: FontWeight.w500),
          secondaryLabelStyle: const TextStyle(
              color: ColorApp.chipsTextSelected,
              fontFamily: Font.sfText,
              fontSize: 12,
              fontWeight: FontWeight.w500),
          brightness: Brightness.dark,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 0,
        ),
        //! textField
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            borderSide: BorderSide(
              color: ColorApp.borderFocuse, //темная такая же
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            borderSide: BorderSide(color: Colors.transparent, width: 0),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            borderSide: BorderSide(
              color: ColorApp.error, //темная такая же
              width: 1,
            ),
          ),
          hintStyle: TextStyle(
              fontFamily: Font.sfText,
              color: ColorApp.inputLabel,
              fontSize: 16,
              letterSpacing: 0),
          labelStyle: TextStyle(
            fontFamily: Font.sfText,
            color: ColorApp.labelDark,
            fontSize: 16,
          ),
          fillColor: ColorApp.fillColorDark,
          suffixIconColor: ColorApp.inputSuffixDark,
          suffixStyle: TextStyle(
            fontFamily: Font.sfText,
            color: ColorApp.inputSuffixDark,
          ),
          prefixIconColor: ColorApp.inputSuffixDark,
          prefixStyle: TextStyle(
            fontFamily: Font.sfText,
            fontSize: 16,
            color: ColorApp.labelDark,
          ),
        ),

        //! TextTheme
        textTheme: _textDark(_themeDark.textTheme),
      );
}

TextTheme _textLight(TextTheme base) {
  return base.copyWith(
    //for the text of the Skip button
    headline6: base.headline6!.copyWith(
      fontFamily: Font.sfText,
      color: ColorApp.textButton,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    headline5: base.headline5!.copyWith(
      fontFamily: Font.sfText,
      color: ColorApp.title,
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    headline4: base.headline4!.copyWith(
      fontFamily: Font.sfText,
      color: ColorApp.title,
      fontSize: 28,
      fontWeight: FontWeight.w500,
    ),
    headline3: base.headline3!.copyWith(
      fontFamily: Font.sfText,
      color: ColorApp.numberInterPin,
      fontSize: 30,
      fontWeight: FontWeight.w500,
    ),
    //for the label before the TextButton
    subtitle2: base.subtitle2!.copyWith(
      fontFamily: Font.sfText,
      color: ColorApp.subTitle,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    //for the text of the 'Choose your region' button
    labelMedium: base.labelMedium!.copyWith(
      fontFamily: Font.sfText,
      color: ColorApp.textButton,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),

    //for button text with yellow background
    button: base.button!.copyWith(
      fontFamily: Font.sfText,
      color: ColorApp.textButton,
      fontSize: 16,
    ),
    //for the text of the TextButton
    caption: base.caption!.copyWith(
      fontFamily: Font.sfText,
      color: ColorApp.textButton,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    bodyText1: base.bodyText1!.copyWith(
      fontFamily: Font.sfText,
      color: ColorApp.textBodyLight,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    bodyText2: base.bodyText2!.copyWith(
      fontFamily: Font.sfText,
      color: ColorApp.textBodyDark,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
  );
}

TextTheme _textDark(TextTheme base) {
  return base.copyWith(
    //for the text of the Skip button
    headline6: base.headline6!.copyWith(
      fontFamily: Font.sfText,
      color: ColorApp.textBodyLight,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    headline5: base.headline5!.copyWith(
      fontFamily: Font.sfText,
      color: ColorApp.backgroundLight,
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    headline4: base.headline4!.copyWith(
      fontFamily: Font.sfText,
      color: ColorApp.backgroundLight,
      fontSize: 28,
      fontWeight: FontWeight.w500,
    ),
    headline3: base.headline3!.copyWith(
      fontFamily: Font.sfText,
      color: ColorApp.backgroundLight,
      fontSize: 30,
      fontWeight: FontWeight.w500,
    ),
    //for the label before the TextButton
    subtitle2: base.subtitle2!.copyWith(
      fontFamily: Font.sfText,
      color: ColorApp.subTitle,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    //for the text of the 'Choose your region' button
    labelMedium: base.labelMedium!.copyWith(
      fontFamily: Font.sfText,
      color: ColorApp.backgroundLight,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),

    //for button text with yellow background
    button: base.button!.copyWith(
      fontFamily: Font.sfText,
      color: ColorApp.textBodyDark,
      fontSize: 16,
    ),
    //for the text of the TextButton
    caption: base.caption!.copyWith(
      fontFamily: Font.sfText,
      color: ColorApp.yellowButton,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    bodyText1: base.bodyText1!.copyWith(
      fontFamily: Font.sfText,
      color: ColorApp.textBodyLight,
      fontSize: 12,
    ),
    bodyText2: base.bodyText2!.copyWith(
      fontFamily: Font.sfText,
      color: ColorApp.textBodyLight,
      fontSize: 12,
    ),
  );
}
