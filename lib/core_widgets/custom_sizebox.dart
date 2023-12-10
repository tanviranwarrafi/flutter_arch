import 'package:app/di.dart';
import 'package:app/helpers/dimension_helper.dart';
import 'package:app/models/dummy/dimension.dart';
import 'package:flutter/material.dart';

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
