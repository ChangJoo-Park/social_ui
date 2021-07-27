import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_ui/colors.dart';

class SocialUiTheme {
  static String? fontFamily = GoogleFonts.notoSans().fontFamily;
  static double? appbarTitleFontSize = 19;

  static ThemeData get lightTheme {
    return ThemeData.light().copyWith(
      primaryColor: SocialUiColor.primaryColor,
      accentColor: SocialUiColor.accentColor,
      scaffoldBackgroundColor: SocialUiColor.scaffoldBackgroundColor,
      textTheme: TextTheme(
        headline1: TextStyle(
          color: SocialUiColor.black,
          fontFamily: fontFamily,
        ),
        headline2: TextStyle(
          color: SocialUiColor.black,
          fontFamily: fontFamily,
        ),
        headline3: TextStyle(
          color: SocialUiColor.black,
          fontFamily: fontFamily,
        ),
        headline4: TextStyle(
          color: SocialUiColor.black,
          fontFamily: fontFamily,
        ),
        headline5: TextStyle(
          color: SocialUiColor.black,
          fontFamily: fontFamily,
        ),
        headline6: TextStyle(
          color: SocialUiColor.black,
          fontFamily: fontFamily,
        ),
        overline: TextStyle(
          color: SocialUiColor.grey,
          fontFamily: fontFamily,
        ),
        subtitle1: TextStyle(
          color: SocialUiColor.black.withOpacity(0.8),
          fontFamily: fontFamily,
        ),
        subtitle2: TextStyle(
          color: SocialUiColor.grey,
          fontFamily: fontFamily,
        ),
        bodyText1: TextStyle(
          color: SocialUiColor.black,
          fontFamily: fontFamily,
        ),
        bodyText2: TextStyle(
          color: SocialUiColor.grey,
          fontFamily: fontFamily,
        ),
      ),
      iconTheme: IconThemeData(color: SocialUiColor.grey),
      appBarTheme: AppBarTheme(
        backgroundColor: SocialUiColor.white,
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: appbarTitleFontSize,
            color: SocialUiColor.black,
            fontFamily: fontFamily,
          ),
        ),
        elevation: 0,
        actionsIconTheme: IconThemeData(
          color: SocialUiColor.black,
        ),
      ),
      cardTheme: CardTheme(
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        shadowColor: SocialUiColor.shadowColor,
        color: SocialUiColor.white,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        hoverColor: SocialUiColor.white,
        focusColor: SocialUiColor.white,
        fillColor: SocialUiColor.lightGreyWithOpacity20,
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        focusedBorder: OutlineInputBorder(
          gapPadding: 0,
          borderSide: BorderSide(color: Colors.transparent, width: 0.0),
        ),
        enabledBorder: OutlineInputBorder(
          gapPadding: 0,
          borderSide: BorderSide(color: Colors.transparent, width: 0.0),
        ),
        hintStyle: TextStyle(color: SocialUiColor.lightGrey, fontSize: 14),
      ),
    );
  }
}
