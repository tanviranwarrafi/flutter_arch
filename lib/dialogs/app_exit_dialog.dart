import 'dart:io' as platform;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_arch/constants/app_constants.dart';
import 'package:flutter_arch/constants/colors.dart';
import 'package:flutter_arch/constants/shadows.dart';
import 'package:flutter_arch/di.dart';
import 'package:flutter_arch/extensions/route_ext.dart';
import 'package:flutter_arch/utils/default_config.dart';
import 'package:flutter_arch/utils/keys.dart';
import 'package:flutter_arch/utils/text_styles.dart';
import 'package:flutter_arch/utils/transitions.dart';

dynamic appExitDialog() async {
  final context = navigatorKey.currentState!.context;
  await showGeneralDialog(
    context: context,
    barrierColor: popupBearer,
    barrierDismissible: false,
    transitionDuration: dialogDuration,
    barrierLabel: 'App Exit Dialog',
    transitionBuilder: sl<Transitions>().topToBottom,
    pageBuilder: (buildContext, anim1, anim2) {
      return WillPopScope(onWillPop: () => Future.value(false), child: Align(child: _AppExitDialogView()));
    },
  );
}

class _AppExitDialogView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: dialogWidth,
      padding: const EdgeInsets.symmetric(horizontal: dialogPadding, vertical: dialogPadding),
      decoration: BoxDecoration(color: white, borderRadius: dialogRadius, boxShadow: const [blueShadow1]),
      child: Material(color: white, shape: RoundedRectangleBorder(borderRadius: dialogRadius), child: _mobileView(context)),
    );
  }

  Widget _mobileView(BuildContext context) {
    var label = 'Are you sure you want to close MyHealth+?';
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, textAlign: TextAlign.center, style: sl<TextStyles>().text18_500(black)),
        const SizedBox(height: 32),
        Row(children: [Expanded(child: _stayButton(context)), const SizedBox(width: 16), Expanded(child: _logoutButton(context))]),
      ],
    );
  }

  Widget _stayButton(BuildContext context) {
    var side = BorderSide(color: primary.withOpacity(0.15));
    var radius = BorderRadius.circular(08);
    var shape = RoundedRectangleBorder(borderRadius: radius);
    return OutlinedButton(
      onPressed: backToPrevious,
      child: Text('No, Stay', style: sl<TextStyles>().text_button(primary)),
      style: OutlinedButton.styleFrom(backgroundColor: primary, shape: shape, side: side),
    );
  }

  Widget _logoutButton(BuildContext context) {
    var radius = BorderRadius.circular(08);
    var shape = RoundedRectangleBorder(borderRadius: radius);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(shape: shape),
      child: Text('Yes, Please', style: sl<TextStyles>().text_button(white)),
      onPressed: () => platform.Platform.isAndroid ? SystemNavigator.pop() : platform.exit(0),
    );
  }
}
