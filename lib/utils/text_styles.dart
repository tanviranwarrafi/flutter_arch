import 'package:flutter/material.dart';
import 'package:flutter_arch/constants/fonts.dart';
import 'package:flutter_arch/di.dart';
import 'package:flutter_arch/extensions/number_ext.dart';
import 'package:flutter_arch/helpers/dimension_helper.dart';
import 'package:flutter_arch/models/dummy/dimension.dart';

class TextStyles {
  TextStyle text32_800(Color color) {
    double fontSize = sl<DimensionHelper>().dimensionSizer(Dimension(small: 23.2.sp, mobile: 23.2.sp, tab: 32));
    return TextStyle(color: color, fontSize: fontSize, height: 1.25, fontWeight: w800, fontFamily: manrope);
  }

  TextStyle text26_600(Color color) {
    double fontSize = sl<DimensionHelper>().dimensionSizer(Dimension(small: 18.3.sp, mobile: 18.3.sp, tab: 26));
    return TextStyle(color: color, fontSize: fontSize, height: 1.46, fontWeight: w600, fontFamily: poppins);
  }

  TextStyle text24_600(Color color) {
    double fontSize = sl<DimensionHelper>().dimensionSizer(Dimension(small: 17.4.sp, mobile: 17.4.sp, tab: 24));
    return TextStyle(color: color, fontSize: fontSize, height: 1.3, fontWeight: w600, fontFamily: manrope);
  }

  TextStyle text22_700(Color color) {
    double fontSize = sl<DimensionHelper>().dimensionSizer(Dimension(small: 16.sp, mobile: 16.sp, tab: 22));
    return TextStyle(color: color, fontSize: fontSize, height: 1.4, fontWeight: w700, fontFamily: manrope);
  }

  TextStyle text22_600(Color color) {
    double fontSize = sl<DimensionHelper>().dimensionSizer(Dimension(small: 16.sp, mobile: 16.sp, tab: 22));
    return TextStyle(color: color, fontSize: fontSize, height: 1.4, fontWeight: w600, fontFamily: manrope);
  }

  TextStyle text22_500(Color color) {
    double fontSize = sl<DimensionHelper>().dimensionSizer(Dimension(small: 16.sp, mobile: 16.sp, tab: 22));
    return TextStyle(color: color, fontSize: fontSize, height: 1.4, fontWeight: w500, fontFamily: manrope);
  }

  TextStyle text20_600(Color color) {
    double fontSize = sl<DimensionHelper>().dimensionSizer(Dimension(small: 14.1.sp, mobile: 14.1.sp, tab: 20));
    return TextStyle(color: color, fontSize: fontSize, height: 1.4, fontWeight: w600, fontFamily: manrope);
  }

  TextStyle text18_700(Color color) {
    double fontSize = sl<DimensionHelper>().dimensionSizer(Dimension(small: 13.1.sp, mobile: 13.1.sp, tab: 18));
    return TextStyle(color: color, fontSize: fontSize, height: 1.5, fontWeight: w700, fontFamily: manrope);
  }

  TextStyle text18_500(Color color) {
    double fontSize = sl<DimensionHelper>().dimensionSizer(Dimension(small: 13.1.sp, mobile: 13.1.sp, tab: 18));
    return TextStyle(color: color, fontSize: fontSize, height: 1.3, fontWeight: w500, fontFamily: manrope);
  }

  TextStyle text18_400(Color color) {
    double fontSize = sl<DimensionHelper>().dimensionSizer(Dimension(small: 13.1.sp, mobile: 13.1.sp, tab: 18));
    return TextStyle(color: color, fontSize: fontSize, height: 1.3, fontWeight: normal, fontFamily: manrope);
  }

  TextStyle text_button(Color color) {
    double fontSize = sl<DimensionHelper>().dimensionSizer(Dimension(small: 11.7.sp, mobile: 11.7.sp, tab: 17));
    return TextStyle(color: color, fontSize: fontSize, fontWeight: w700, fontFamily: manrope);
  }

  TextStyle text16_700(Color color) {
    double fontSize = sl<DimensionHelper>().dimensionSizer(Dimension(small: 11.6.sp, mobile: 11.6.sp, tab: 16));
    return TextStyle(color: color, fontSize: fontSize, height: 1.5, fontWeight: w700, fontFamily: manrope);
  }

  TextStyle text16_500(Color color) {
    double fontSize = sl<DimensionHelper>().dimensionSizer(Dimension(small: 11.6.sp, mobile: 11.6.sp, tab: 16));
    return TextStyle(color: color, fontSize: fontSize, height: 1.5, fontWeight: w500, fontFamily: manrope);
  }

  TextStyle text16_400(Color color) {
    double fontSize = sl<DimensionHelper>().dimensionSizer(Dimension(small: 11.6.sp, mobile: 11.6.sp, tab: 16));
    return TextStyle(color: color, fontSize: fontSize, height: 1.5, fontWeight: normal, fontFamily: manrope);
  }

  TextStyle text14_700(Color color) {
    double fontSize = sl<DimensionHelper>().dimensionSizer(Dimension(small: 10.2.sp, mobile: 10.2.sp, tab: 14));
    return TextStyle(color: color, fontSize: fontSize, height: 1.4, fontWeight: w700, fontFamily: manrope);
  }

  TextStyle text14_500(Color color) {
    double fontSize = sl<DimensionHelper>().dimensionSizer(Dimension(small: 10.2.sp, mobile: 10.2.sp, tab: 14));
    return TextStyle(color: color, fontSize: fontSize, height: 1.4, fontWeight: w500, fontFamily: manrope);
  }

  TextStyle text14_400(Color color) {
    double fontSize = sl<DimensionHelper>().dimensionSizer(Dimension(small: 10.2.sp, mobile: 10.2.sp, tab: 14));
    return TextStyle(color: color, fontSize: fontSize, height: 1.4, fontWeight: normal, fontFamily: manrope);
  }

  TextStyle text13_400(Color color) {
    double fontSize = sl<DimensionHelper>().dimensionSizer(Dimension(small: 9.2.sp, mobile: 9.2.sp, tab: 13));
    return TextStyle(color: color, fontSize: fontSize, height: 1.53, fontWeight: normal, fontFamily: poppins);
  }

  TextStyle text12_700(Color color) {
    double fontSize = sl<DimensionHelper>().dimensionSizer(Dimension(small: 8.7.sp, mobile: 8.7.sp, tab: 12));
    return TextStyle(color: color, fontSize: fontSize, height: 1.3, fontWeight: w700, fontFamily: manrope);
  }

  TextStyle text12_500(Color color) {
    double fontSize = sl<DimensionHelper>().dimensionSizer(Dimension(small: 8.7.sp, mobile: 8.7.sp, tab: 12));
    return TextStyle(color: color, fontSize: fontSize, height: 1.3, fontWeight: w500, fontFamily: manrope);
  }

  TextStyle text12_400(Color color) {
    double fontSize = sl<DimensionHelper>().dimensionSizer(Dimension(small: 8.7.sp, mobile: 8.7.sp, tab: 12));
    return TextStyle(color: color, fontSize: fontSize, height: 1.3, fontWeight: normal, fontFamily: manrope);
  }

  TextStyle text10_700(Color color) {
    double fontSize = sl<DimensionHelper>().dimensionSizer(Dimension(small: 7.3.sp, mobile: 7.3.sp, tab: 10));
    return TextStyle(color: color, fontSize: fontSize, height: 1.2, fontWeight: w700, fontFamily: manrope);
  }

  TextStyle text10_400(Color color) {
    double fontSize = sl<DimensionHelper>().dimensionSizer(Dimension(small: 7.3.sp, mobile: 7.3.sp, tab: 10));
    return TextStyle(color: color, fontSize: fontSize, height: 1.2, fontWeight: normal, fontFamily: manrope);
  }
}
