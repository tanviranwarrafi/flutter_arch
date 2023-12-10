import 'package:app/constants/colors.dart';
import 'package:app/di.dart';
import 'package:app/extensions/number_ext.dart';
import 'package:app/library_widgets/svg_image.dart';
import 'package:app/utils/size_config.dart';
import 'package:app/utils/text_styles.dart';
import 'package:flutter/material.dart';

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
