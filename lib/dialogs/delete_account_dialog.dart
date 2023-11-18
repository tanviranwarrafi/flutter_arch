import 'package:flutter/material.dart';
import 'package:flutter_arch/constants/app_constants.dart';
import 'package:flutter_arch/constants/colors.dart';
import 'package:flutter_arch/constants/shadows.dart';
import 'package:flutter_arch/di.dart';
import 'package:flutter_arch/extensions/route_ext.dart';
import 'package:flutter_arch/utils/default_config.dart';
import 'package:flutter_arch/utils/keys.dart';
import 'package:flutter_arch/utils/text_styles.dart';
import 'package:flutter_arch/utils/transitions.dart';

Future<void> accountDeleteDialog() async {
  final context = navigatorKey.currentState!.context;
  await showGeneralDialog(
    context: context,
    barrierColor: popupBearer,
    barrierDismissible: false,
    transitionDuration: dialogDuration,
    barrierLabel: 'Account Delete Dialog',
    transitionBuilder: sl<Transitions>().bottomToTop,
    pageBuilder: (buildContext, anim1, anim2) {
      return WillPopScope(onWillPop: () => Future.value(false), child: Align(child: _AccountDeleteDialogView()));
    },
  );
}

class _AccountDeleteDialogView extends StatelessWidget {
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
    var label = 'Are you sure you want to delete your account and all information?';
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, textAlign: TextAlign.center, style: sl<TextStyles>().text18_500(black)),
        const SizedBox(height: 32),
        Row(children: [Expanded(child: _keepButton(context)), const SizedBox(width: 16), Expanded(child: _deleteButton(context))]),
      ],
    );
  }

  Widget _keepButton(BuildContext context) {
    var radius = BorderRadius.circular(08);
    var side = BorderSide(color: primary.withOpacity(0.15));
    var shape = RoundedRectangleBorder(borderRadius: radius);
    return OutlinedButton(
      onPressed: backToPrevious,
      child: Text('No, Keep', style: sl<TextStyles>().text_button(primary)),
      style: OutlinedButton.styleFrom(backgroundColor: primary, shape: shape, side: side),
    );
  }

  Widget _deleteButton(BuildContext context) {
    var radius = BorderRadius.circular(08);
    var shape = RoundedRectangleBorder(borderRadius: radius);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(shape: shape),
      child: Text('Yes, Delete', style: sl<TextStyles>().text_button(white)),
      onPressed: backToPrevious,
      // onPressed: () => Provider.of<LandingViewModel>(context, listen: false).deleteAccountOnTap(),
    );
  }
}
