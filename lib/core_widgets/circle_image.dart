import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_arch/constants/colors.dart';
import 'package:flutter_arch/library_widgets/image_network.dart';

class CircleImage extends StatelessWidget {
  final Function()? onTap;
  final String? imageUrl;
  final double radius;
  final double? elevation;
  final double? borderWidth;
  final Color? borderColor;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Widget? placeHolder;
  final Widget? errorWidget;
  final BoxFit? imageFit;
  final BlendMode? blendMode;

  const CircleImage({
    required this.imageUrl,
    this.radius = 50,
    this.elevation = 0,
    this.borderWidth = 0,
    this.borderColor = white,
    this.backgroundColor = white,
    this.imageFit = BoxFit.cover,
    this.foregroundColor = transparent,
    this.onTap,
    this.placeHolder,
    this.errorWidget,
    this.blendMode,
  });

  @override
  Widget build(BuildContext context) {
    var borderRadius = BorderRadius.circular(radius);
    var border = Border.all(width: borderWidth ?? 0, color: borderColor ?? white);
    var decoration = BoxDecoration(color: backgroundColor, borderRadius: borderRadius);
    return InkWell(
      onTap: onTap,
      child: Material(
        color: borderColor,
        elevation: elevation ?? 0,
        type: MaterialType.circle,
        child: Container(
          width: radius * 2,
          height: radius * 2,
          alignment: Alignment.center,
          decoration: BoxDecoration(borderRadius: borderRadius, border: border),
          child: Container(decoration: decoration, child: Stack(fit: StackFit.expand, children: <Widget>[_imageSection(context)])),
        ),
      ),
    );
  }

  Widget _imageSection(BuildContext context) {
    if (imageUrl == null) return ClipRRect(borderRadius: BorderRadius.circular(radius), child: errorWidget);
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: NetworkImageCached(
        fit: imageFit,
        image: imageUrl!,
        placeholder: placeHolder,
        errorWidget: errorWidget,
        colorBlendMode: blendMode,
      ),
    );
  }
}
