import 'package:flutter/material.dart';
import 'package:flutter_arch/themes/light_theme.dart';
import 'package:flutter_arch/utils/keys.dart';
import 'package:flutter_arch/views/auth/sign_in_screen.dart';

class TattedApp extends StatefulWidget {
  @override
  State<TattedApp> createState() => _TattedAppState();
}

class _TattedAppState extends State<TattedApp> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // color: primary,
      title: 'Tatted',
      theme: lightThemeData,
      home: SignInScreen(),
      navigatorKey: navigatorKey,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: scaffoldMessengerKey,
    );
  }
}
