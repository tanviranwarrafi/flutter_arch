import 'package:flutter/material.dart';
import 'package:flutter_arch/constants/colors.dart';

class ButtonLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var progressbar = CircularProgressIndicator(color: white, backgroundColor: white.withOpacity(0.3));
    return Container(width: double.infinity, alignment: Alignment.center, child: SizedBox(width: 24, height: 24, child: progressbar));
  }
}
