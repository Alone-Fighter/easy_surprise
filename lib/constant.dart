import 'package:flutter/material.dart';
import 'dart:ui';

const kBackColor = Color(0xffF9F9F9);
const kBackColorProgress = Color(0xffF4F4F6);
const kRedColor = Color(0xffD11238);
const kHintColor = Color(0xffA4A2B7);
const kGreenColor = Color(0xff2EB875);
const kTextColor1 = Color(0xff2C3E50);
const kTextColor2 = Color(0xff29273C);
const kTextColor3 = Color(0xff717080);
const kTextColor4 = Color(0xff516478);
const kArrowColor = Color(0xffCACACB);


const kFontYekanbakh = 'YekanBakh';
const kFontYekanBakhRegular = 'YekanBakhRegular';

extension TextStyleExtension on TextStyle {

  TextStyle get txt3Xs => merge(const TextStyle(fontSize: 6));
  TextStyle get txt2Xs => merge(const TextStyle(fontSize: 9));
  TextStyle get txtXs => merge(const TextStyle(fontSize: 10));
  TextStyle get txtSm => merge(const TextStyle(fontSize: 12));
  TextStyle get txtMd => merge(const TextStyle(fontSize: 14));
  TextStyle get txtLg => merge(const TextStyle(fontSize: 16));
  TextStyle get txtXl => merge(const TextStyle(fontSize: 18));
  TextStyle get txt2Xl => merge(const TextStyle(fontSize: 20));
  TextStyle get txt3Xl => merge(const TextStyle(fontSize: 24));
  TextStyle get txt4Xl => merge(const TextStyle(fontSize: 28));
  TextStyle get textWhite => merge(const TextStyle(color: Colors.white));
  TextStyle get textGrey => merge(const TextStyle(color: Colors.grey));
  TextStyle get textGrey1 => merge(const TextStyle(color: kHintColor));
  TextStyle get textRed => merge(const TextStyle(color: kRedColor));
  TextStyle get textBlack => merge(const TextStyle(color: Colors.black));
  TextStyle get textColor1 => merge(const TextStyle(color: kTextColor1));
  TextStyle get textColor2 => merge(const TextStyle(color: kTextColor2));
  TextStyle get textColor3 => merge(const TextStyle(color: kTextColor3));
  TextStyle get textColor4 => merge(const TextStyle(color: kTextColor4));
  TextStyle get txtRegular => merge(const TextStyle(fontFamily: kFontYekanBakhRegular));
  TextStyle get txtYekanBakh => merge(const TextStyle(fontFamily: kFontYekanbakh));
  TextStyle get txtMedium=> merge(const TextStyle(fontWeight: FontWeight.w500));
  TextStyle get txtBold => merge(const TextStyle(fontWeight: FontWeight.w700));
  TextStyle get txtDotted => merge(const TextStyle(decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.dotted,shadows: [Shadow(color: Colors.red, offset: Offset(0, -7))],color: Colors.transparent,decorationThickness: 4,decorationColor: kRedColor,));
}

const TextStyle txt  = TextStyle();
