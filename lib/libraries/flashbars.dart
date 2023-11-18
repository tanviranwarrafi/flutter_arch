import 'dart:io';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_arch/constants/colors.dart';
import 'package:flutter_arch/utils/keys.dart';

class FlashBars {
  void warningMessage({required String message}) {
    Flushbar(
      titleSize: 17,
      messageSize: 15,
      message: message,
      titleColor: white,
      messageColor: white,
      title: 'Attention!',
      backgroundColor: yellow,
      duration: const Duration(seconds: 3),
      flushbarPosition: FlushbarPosition.TOP,
      borderRadius: BorderRadius.circular(10),
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      margin: EdgeInsets.only(left: 20, right: 20, top: Platform.isAndroid ? 20 : 0),
    ).show(navigatorKey.currentContext!);
  }

  void errorMessage({required String message}) {
    Flushbar(
      titleSize: 17,
      messageSize: 15,
      title: 'Error!!',
      message: message,
      titleColor: white,
      messageColor: white,
      backgroundColor: pink,
      duration: const Duration(seconds: 3),
      flushbarPosition: FlushbarPosition.TOP,
      borderRadius: BorderRadius.circular(10),
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      margin: EdgeInsets.only(left: 20, right: 20, top: Platform.isAndroid ? 20 : 0),
    ).show(navigatorKey.currentContext!);
  }

  void successMessage({required String message}) {
    Flushbar(
      titleSize: 17,
      messageSize: 15,
      message: message,
      titleColor: white,
      messageColor: white,
      backgroundColor: green,
      title: 'Congratulations!!',
      duration: const Duration(seconds: 3),
      flushbarPosition: FlushbarPosition.TOP,
      borderRadius: BorderRadius.circular(10),
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      margin: EdgeInsets.only(left: 20, right: 20, top: Platform.isAndroid ? 20 : 0),
    ).show(navigatorKey.currentContext!);
  }
}
