import 'package:flutter/material.dart';

const kWhite = Colors.white;
const kBlack = Colors.black;
const kRed = Colors.red;
const kTextBlack = Colors.black54;
const kMainColor = Color(0xffC84B03);
const kMainColorMonochrom = Color(0xffF9AB7F);
const kActivationGreen = Color(0xff5D8000);
const kDeepGrey = Color(0xff7C7676);
const kGrey = Color(0xffC4C4C4);
const kSizedBoxWidth = 2.5;
const kSignUpBodyPadding = EdgeInsets.all(30.0);
const kDividerMargin = EdgeInsets.symmetric(horizontal: 10);
const kAlternativeLogginImageMargin = EdgeInsets.all(10);
const kAlternativeLogginImageHeight = 90.0;
const kAlternativeLogginImageWidth = 100.0;
const kAlternativeLogginRowPadding = EdgeInsets.only(top: 32.0);
const kMenuDetailsBodyPadding = EdgeInsets.symmetric(horizontal: 16.0);
const kRecommendedSidePadding = EdgeInsets.symmetric(horizontal: 8.0);

class Palette {
  static const MaterialColor kThemeColor = MaterialColor(
    0xffC84B03, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xffce5d1c), //10%
      100: Color(0xffd36f35), //20%
      200: Color(0xffd9814f), //30%
      300: Color(0xffde9368), //40%
      400: Color(0xffe4a581), //50%
      500: Color(0xffe9b79a), //60%
      600: Color(0xffefc9b3), //70%
      700: Color(0xfff4dbcd), //80%
      800: Color(0xfffaede6), //90%
      900: Color(0xffffffff), //100%
    },
  );
}
