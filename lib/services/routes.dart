import 'package:app/views/auth/sign_in_screen.dart';
import 'package:app/views/auth/sign_up_screen.dart';
import 'package:app/views/home/home_screen.dart';
import 'package:app/views/profile/edit_profile_screen.dart';
import 'package:app/views/profile/profile_screen.dart';
import 'package:flutter/cupertino.dart';

class Routes {
  // Auth
  Widget signInScreen() => SignInScreen();
  Widget signUpScreen() => SignUpScreen();
  // Home
  Widget homeScreen() => HomeScreen();
  // Profile
  Widget profileScreen() => ProfileScreen();
  Widget editProfileScreen() => EditProfileScreen();
}
