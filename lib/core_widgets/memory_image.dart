import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ImageMemory extends StatelessWidget {
  final Function()? onTap;
  final Uint8List? imagePath;
  final double? width;
  final double? height;
  final double? radius;
  final Widget? errorWidget;
  final BoxFit? imageFit;

  const ImageMemory({
    required this.imagePath,
    this.radius,
    this.width,
    this.height,
    this.imageFit = BoxFit.contain,
    this.onTap,
    this.errorWidget,
  });

  @override
  Widget build(BuildContext context) {
    var b_Radius = BorderRadius.circular(radius ?? 0);
    return InkWell(onTap: onTap, child: ClipRRect(borderRadius: b_Radius, child: imagePath == null ? _errorWidget : _memoryImage(context)));
  }

  Widget _memoryImage(BuildContext context) {
    return Image.memory(
      imagePath!,
      width: width,
      height: height,
      fit: imageFit ?? BoxFit.contain,
      colorBlendMode: BlendMode.darken,
      filterQuality: FilterQuality.high,
      errorBuilder: errorWidget == null ? null : (context, exception, stackTrace) => errorWidget!,
    );
  }

  Widget get _errorWidget => Container(width: width, height: height, alignment: Alignment.center, child: errorWidget ?? Container());
}
