import 'package:flutter/material.dart';
import 'dart:ui';

const kBackColor = Color(0xffF9F9F9);
const kPinColor = Color(0xffD11238);


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
  TextStyle get txt2Xl => merge(const TextStyle(fontSize: 22));
  TextStyle get txt3Xl => merge(const TextStyle(fontSize: 24));
  TextStyle get txt4Xl => merge(const TextStyle(fontSize: 28));
  TextStyle get textWhite => merge(const TextStyle(color: Colors.white));
  TextStyle get textGrey => merge(const TextStyle(color: Colors.grey));
  TextStyle get textRed => merge(const TextStyle(color: Colors.red));
  TextStyle get textBlack => merge(const TextStyle(color: Colors.black));
  TextStyle get txtRegular => merge(const TextStyle(fontFamily: kFontYekanBakhRegular));
  TextStyle get txtYekanBakh => merge(const TextStyle(fontFamily: kFontYekanbakh));
  TextStyle get txtMedium=> merge(const TextStyle(fontWeight: FontWeight.w500));
  TextStyle get txtBold => merge(const TextStyle(fontWeight: FontWeight.w700));
}

const TextStyle txt  = TextStyle();
