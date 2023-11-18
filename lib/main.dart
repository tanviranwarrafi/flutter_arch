import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_arch/provider/providers.dart';
import 'package:flutter_arch/screen_craft.dart';
import 'package:flutter_arch/services/http_overrides.dart';
import 'package:flutter_arch/tatted_app.dart';
import 'package:flutter_arch/utils/default_config.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';

import 'di.dart' as dependency_injection;

/// flutter build appbundle --release
/// flutter build apk --split-per-abi
/// flutter pub run import_sorter:main lib
/// keytool -list -v -keystore /Users/md.tanviranwarrafi/RafiTanvir/projects/freelanceing/immitrack/android_key/immitrack.jks -alias key

Future<void> main() async {
  await dependency_injection.init();
  await _initTattedApp();
  runApp(MultiProvider(providers: providers, child: screenCraft()));
}

Widget screenCraft() => ScreenCraft(builder: (context, orientation) => TattedApp());

Future<void> _initTattedApp() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  // await Firebase.initializeApp();
  // await sl<NotificationService>().initNotificationService();
  // FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  await portraitMode();
}
