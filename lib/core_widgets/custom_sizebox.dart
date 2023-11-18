import 'package:flutter/material.dart';
import 'package:flutter_arch/di.dart';
import 'package:flutter_arch/helpers/dimension_helper.dart';
import 'package:flutter_arch/models/dummy/dimension.dart';

class SizeBoxHeight extends StatelessWidget {
  final Dimension dimension;
  const SizeBoxHeight({required this.dimension});

  @override
  Widget build(BuildContext context) {
    var height = sl<DimensionHelper>().dimensionSizer(dimension);
    return SizedBox(height: height);
  }
}

class SizeBoxWidth extends StatelessWidget {
  final Dimension dimension;
  const SizeBoxWidth({required this.dimension});

  @override
  Widget build(BuildContext context) {
    var width = sl<DimensionHelper>().dimensionSizer(dimension);
    return SizedBox(width: width);
  }
}
