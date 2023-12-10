import 'package:app/constants/colors.dart';
import 'package:app/library_widgets/svg_image.dart';
import 'package:flutter/material.dart';

class SuffixBox extends StatelessWidget {
  final String icon;
  final Color? color;
  final Function()? onTap;
  const SuffixBox({required this.icon, required this.color, this.onTap});
  @override
  Widget build(BuildContext context) {
    var image = SvgImage(image: icon, color: color ?? grey, height: 22, width: 22, fit: BoxFit.cover);
    return InkWell(onTap: onTap, child: Container(width: 24, alignment: Alignment.center, child: image));
  }
}
