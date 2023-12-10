import 'package:app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> portraitMode() => SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

/// Appbar
const overlayStyle = SystemUiOverlayStyle(
  // statusBarColor: primary,
  // systemNavigationBarColor: black,
  statusBarBrightness: Brightness.light,
  statusBarIconBrightness: Brightness.dark,
  systemNavigationBarIconBrightness: Brightness.dark,
);

/// BottomSheet
var bottomSheetShape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(16));

/// Toasts
var toastShape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(4));

/// Dialogs
var dialogRadius = BorderRadius.circular(08);
var dialogWidth = SizeConfig.width = 32;
