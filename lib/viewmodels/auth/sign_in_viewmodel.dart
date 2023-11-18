import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_arch/di.dart';
import 'package:flutter_arch/repositories/auth_repo.dart';

class SignInViewModel with ChangeNotifier {
  var loader = false;
  var obscureText = true;
  var email = TextEditingController();
  var password = TextEditingController();

  void initViewModel() {}

  void disposeViewModel() {}

  void changeVisibility() {
    obscureText = !obscureText;
    notifyListeners();
  }

  Future<void> signInApiCall(var body) async {
    loader = true;
    notifyListeners();
    var response = await sl<AuthRepository>().signIn(body: body);
    if (response['success'] && response['data'] == null) {}
    loader = false;
    notifyListeners();
  }
}
