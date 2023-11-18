import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NetworkImageCached extends StatelessWidget {
  final String? image;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final BlendMode? colorBlendMode;
  final FilterQuality? filterQuality;
  final Widget? errorWidget;
  final Widget? placeholder;
  final double? radius;

  const NetworkImageCached({
    required this.image,
    this.width,
    this.height,
    this.fit,
    this.filterQuality,
    this.colorBlendMode,
    this.placeholder,
    this.errorWidget,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    var borderRadius = BorderRadius.circular(radius ?? 0);
    return ClipRRect(borderRadius: borderRadius, child: image == null ? _errorWidget() : _networkImage(context));
  }

  Widget _networkImage(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image!,
      width: width,
      height: height,
      fit: fit ?? BoxFit.contain,
      colorBlendMode: colorBlendMode ?? BlendMode.darken,
      filterQuality: filterQuality ?? FilterQuality.high,
      placeholder: placeholder == null ? null : (context, url) => _placeholder(),
      errorWidget: errorWidget == null ? null : (context, url, error) => _errorWidget(),
    );
  }

  Widget _errorWidget() => Container(width: width, height: height, alignment: Alignment.center, child: errorWidget ?? Container());
  Widget _placeholder() => Container(width: width, height: height, alignment: Alignment.center, child: placeholder ?? Container());
}
