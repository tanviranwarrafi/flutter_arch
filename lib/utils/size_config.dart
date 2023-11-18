import 'package:flutter/widgets.dart';

class SizeConfig {
  static double width = 0;
  static double height = 0;
  static double statusBar = 0;

  static bool isPortrait = false;
  static bool isSmall = false;
  static bool isMobile = false;
  static bool isTablet = false;
  static bool isDesktop = false;
  static bool bottomNotch = false;

  static void initMediaQuery(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    statusBar = mediaQuery.padding.top;
    bottomNotch = mediaQuery.viewPadding.bottom > 0 ? true : false;
  }

  static void initLayoutBuilder(BoxConstraints constraints, Orientation orientation) {
    width = constraints.maxWidth;
    height = constraints.maxHeight;
    isSmall = width <= 375 ? true : false;
    isMobile = width < 601 ? true : false;
    isTablet = width >= 601 && width < 1024 ? true : false;
    isDesktop = width >= 1100 ? true : false;
    isPortrait = orientation == Orientation.portrait ? true : false;
  }
}
