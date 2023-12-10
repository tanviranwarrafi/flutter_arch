import 'package:app/themes/light_theme.dart';
import 'package:app/utils/keys.dart';
import 'package:app/views/auth/sign_in_screen.dart';
import 'package:flutter/material.dart';

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
