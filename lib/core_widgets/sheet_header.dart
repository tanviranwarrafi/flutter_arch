import 'package:flutter/material.dart';
import 'package:flutter_arch/constants/colors.dart';
import 'package:flutter_arch/di.dart';
import 'package:flutter_arch/utils/text_styles.dart';

class SheetHeader extends StatelessWidget {
  final String title;
  final Function()? closeOnTap;
  const SheetHeader({required this.title, required this.closeOnTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
          child: Text(title, style: sl<TextStyles>().text18_700(black)),
        ),
        if (closeOnTap != null) Positioned(child: Container() /*CloseMenu(onTap: closeOnTap!)*/, top: 16, right: 12)
      ],
    );
  }
}
