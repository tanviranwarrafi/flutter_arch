import 'package:flutter/material.dart';
import 'package:flutter_arch/constants/colors.dart';
import 'package:flutter_arch/di.dart';
import 'package:flutter_arch/extensions/number_ext.dart';
import 'package:flutter_arch/library_widgets/svg_image.dart';
import 'package:flutter_arch/utils/size_config.dart';
import 'package:flutter_arch/utils/text_styles.dart';

class NoSupportView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var text1 = 'Oops!!';
    var text2 = 'Tatted is has no support for your tab or ipad.';
    var text3 = 'Please install in your mobile phone';
    return Container(
      width: SizeConfig.width,
      height: SizeConfig.height,
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgImage(image: 'Assets.contactUs', width: 50.width),
          const SizedBox(height: 24),
          Text('$text1\n$text2\n$text3', textAlign: TextAlign.center, style: sl<TextStyles>().text22_500(primary)),
        ],
      ),
    );
  }
}
