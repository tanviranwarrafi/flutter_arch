import 'dart:async';

import 'package:app/di.dart';
import 'package:app/repositories/auth_repo.dart';
import 'package:flutter/material.dart';

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
