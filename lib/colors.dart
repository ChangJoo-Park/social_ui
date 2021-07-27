import 'package:flutter/material.dart';

class SocialUiColor {
  static Color shadowColor = const Color(0xFFC5CDDA); // same as lightGrey
  static Color white = const Color(0xFFFFFFFF);
  static Color black = const Color(0xFF333333);
  static Color grey = Colors.grey;
  static Color lightGrey = const Color(0xFFC5CDDA);
  static Color lightGreyWithOpacity20 =
      const Color(0xFFC5CDDA).withOpacity(0.2);

  static Color lightGreen = const Color(0xFF06D6A0);
  static Color lightRed = const Color(0xFFEF476F);

  static Color primaryColor = const Color(0xFF409CED);
  static Color accentColor = const Color(0xFF333333);
  static Color scaffoldBackgroundColor = const Color(0xFFF9F9F9);

  static Color myChatBackgroundColor = primaryColor.withOpacity(0.2);
  static Color otherChatBackgroundColor = lightGreyWithOpacity20;

  static Color myChatTextColor = black.withOpacity(0.8);
  static Color otherChatTextColor = black.withOpacity(1.0);

  static Color rankNumberColor = black;
  static Color rankIncreaseSymbolColor = lightGreen;
  static Color rankSameSymbolColor = grey;
  static Color rankDecreaseSymbolColor = lightRed;
}
