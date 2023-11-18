import 'package:flutter/cupertino.dart';
import 'package:flutter_arch/views/auth/sign_in_screen.dart';
import 'package:flutter_arch/views/auth/sign_up_screen.dart';
import 'package:flutter_arch/views/home/home_screen.dart';
import 'package:flutter_arch/views/profile/edit_profile_screen.dart';
import 'package:flutter_arch/views/profile/profile_screen.dart';

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
