import 'package:flutter/material.dart';
import 'package:flutter_arch/utils/size_config.dart';

class NavButtonBox extends StatelessWidget {
  final bool loader;
  final Widget child;
  const NavButtonBox({required this.loader, required this.child});

  @override
  Widget build(BuildContext context) {
    var bottom = SizeConfig.bottomNotch ? 24.0 : 16.0;
    var padding = EdgeInsets.only(left: 24, right: 24, top: 16, bottom: bottom);
    return Opacity(opacity: loader ? 0.6 : 1, child: Container(child: child, width: double.infinity, padding: padding));
  }
}
