import 'package:app/constants/colors.dart';
import 'package:app/constants/fonts.dart';
import 'package:app/di.dart';
import 'package:app/helpers/dimension_helper.dart';
import 'package:app/models/dummy/dimension.dart';
import 'package:app/utils/default_config.dart';
import 'package:app/utils/size_config.dart';
import 'package:app/utils/text_styles.dart';
import 'package:flutter/material.dart';

ThemeData get lightThemeData {
  return ThemeData(
    cardColor: white,
    useMaterial3: true,
    fontFamily: manrope,
    primaryColor: primary,
    dividerColor: grey,
    disabledColor: grey,
    hintColor: grey,
    indicatorColor: primary,
    primarySwatch: Colors.deepPurple,
    splashColor: transparent,
    focusColor: transparent,
    hoverColor: transparent,
    highlightColor: transparent,
    scaffoldBackgroundColor: white,
    brightness: Brightness.light,
    visualDensity: VisualDensity.comfortable,
    textTheme: _textThemeLight,
    dividerTheme: _dividerThemeLight,
    primaryIconTheme: _primaryIconThemeLight,
    drawerTheme: _drawerThemeLight,
    dialogTheme: _dialogThemeLight,
    bottomSheetTheme: _bottomSheetThemeLight,
    tabBarTheme: _tabBarThemeLight,
    appBarTheme: _appBarThemeLight,
    bottomAppBarTheme: _bottomAppBarThemeLight,
    bottomNavigationBarTheme: bottomNavigationBarThemeLight,
    buttonTheme: _buttonThemeLight,
    floatingActionButtonTheme: _floatingActionButtonThemeLight,
    elevatedButtonTheme: ElevatedButtonThemeData(style: _elevatedButtonStyleLight),
    outlinedButtonTheme: OutlinedButtonThemeData(style: _outlineButtonStyleLight),
    colorScheme: ColorScheme.fromSwatch().copyWith(primary: black, secondary: primary, background: white, error: primary),
  );
}

TextTheme get _textThemeLight => TextTheme(labelLarge: sl<TextStyles>().text16_500(white));
DividerThemeData get _dividerThemeLight => const DividerThemeData(color: grey, thickness: 1);
IconThemeData get _primaryIconThemeLight => const IconThemeData(color: grey, size: 24);

DrawerThemeData get _drawerThemeLight {
  return DrawerThemeData(
    elevation: 0,
    backgroundColor: white,
    scrimColor: popupBearer,
    width: SizeConfig.width - 32,
  );
}

DialogTheme get _dialogThemeLight {
  return DialogTheme(
    elevation: 2,
    iconColor: black,
    backgroundColor: white,
    alignment: Alignment.topCenter,
    titleTextStyle: sl<TextStyles>().text22_600(black),
    contentTextStyle: sl<TextStyles>().text14_400(black),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  );
}

BottomSheetThemeData get _bottomSheetThemeLight {
  var radius = const Radius.circular(12);
  return BottomSheetThemeData(
    elevation: 5,
    modalElevation: 5,
    backgroundColor: white,
    modalBackgroundColor: white,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: radius, topRight: radius)),
  );
}

TabBarTheme get _tabBarThemeLight => TabBarTheme(
      labelColor: black,
      unselectedLabelColor: grey,
      indicatorSize: TabBarIndicatorSize.tab,
      labelPadding: const EdgeInsets.symmetric(horizontal: 10),
      labelStyle: sl<TextStyles>().text14_500(black),
      unselectedLabelStyle: sl<TextStyles>().text14_500(grey),
      indicator: const UnderlineTabIndicator(borderSide: BorderSide(color: black, width: 2)),
    );

AppBarTheme get _appBarThemeLight {
  return AppBarTheme(
    elevation: 0,
    titleSpacing: 16,
    centerTitle: true,
    backgroundColor: white,
    systemOverlayStyle: overlayStyle,
    titleTextStyle: sl<TextStyles>().text18_700(grey),
    toolbarTextStyle: sl<TextStyles>().text18_500(grey),
    iconTheme: const IconThemeData(color: black, size: 24),
    actionsIconTheme: const IconThemeData(color: black, size: 24),
    toolbarHeight: sl<DimensionHelper>().dimensionSizer(Dimension(small: 60, mobile: 64)),
  );
}

BottomAppBarTheme get _bottomAppBarThemeLight => const BottomAppBarTheme(color: primary, elevation: 3);
BottomNavigationBarThemeData get bottomNavigationBarThemeLight {
  return BottomNavigationBarThemeData(
    elevation: 3,
    backgroundColor: primary,
    selectedItemColor: white,
    unselectedItemColor: grey,
    showUnselectedLabels: true,
    showSelectedLabels: true,
    type: BottomNavigationBarType.fixed,
    selectedLabelStyle: sl<TextStyles>().text12_500(white),
    unselectedLabelStyle: sl<TextStyles>().text12_500(grey),
    landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
    selectedIconTheme: const IconThemeData(size: 24, color: white),
    unselectedIconTheme: const IconThemeData(size: 24, color: grey),
  );
}

ButtonThemeData get _buttonThemeLight {
  var dimension = Dimension(small: 48, mobile: 54, tab: 54);
  var height = sl<DimensionHelper>().dimensionSizer(dimension);
  return ButtonThemeData(
    minWidth: 50,
    height: height,
    disabledColor: grey,
    buttonColor: primary,
    focusColor: transparent,
    hoverColor: transparent,
    splashColor: transparent,
    highlightColor: transparent,
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  );
}

FloatingActionButtonThemeData get _floatingActionButtonThemeLight {
  return FloatingActionButtonThemeData(
    iconSize: 24,
    backgroundColor: primary,
    foregroundColor: white,
    hoverColor: transparent,
    splashColor: transparent,
    focusColor: transparent,
    disabledElevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
  );
}

ButtonStyle get _elevatedButtonStyleLight {
  return ElevatedButton.styleFrom(
    elevation: 0.5,
    shadowColor: blue,
    backgroundColor: primary,
    disabledForegroundColor: grey,
    disabledMouseCursor: MouseCursor.defer,
    visualDensity: VisualDensity.comfortable,
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    disabledBackgroundColor: grey.withOpacity(0.3),
    textStyle: sl<TextStyles>().text_button(white),
    side: const BorderSide(color: transparent, width: 0),
    padding: const EdgeInsets.symmetric(horizontal: 8),
    minimumSize: const Size(50, 48),
    maximumSize: const Size(double.infinity, 48),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(08)),
  );
}

ButtonStyle get _outlineButtonStyleLight {
  return OutlinedButton.styleFrom(
    elevation: 0.5,
    shadowColor: transparent,
    backgroundColor: blue,
    disabledForegroundColor: grey,
    disabledBackgroundColor: transparent,
    enabledMouseCursor: MouseCursor.uncontrolled,
    disabledMouseCursor: MouseCursor.defer,
    visualDensity: VisualDensity.comfortable,
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    side: BorderSide(color: primary.withOpacity(0.24)),
    textStyle: sl<TextStyles>().text_button(white),
    minimumSize: const Size(50, 48),
    maximumSize: const Size(double.infinity, 48),
    padding: const EdgeInsets.symmetric(horizontal: 8),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(08)),
  );
}
