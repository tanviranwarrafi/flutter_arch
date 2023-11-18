import 'package:flutter/cupertino.dart';
import 'package:flutter_arch/utils/keys.dart';

extension FlutterExtensions on void {
  void minimizeKeyboard() {
    var context = navigatorKey.currentState?.context;
    if (context == null) return;
    FocusScope.of(context).unfocus();
    // var keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    // if (keyboardOpen) FocusScope.of(context).unfocus();
  }
}
