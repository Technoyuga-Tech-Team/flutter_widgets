// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgPictureNetwork extends StatelessWidget {
  final String assetName;
  final String? package;
  final double? height;
  final double? width;
  final Color? color;
  final BoxFit fit;
  final Widget Function(BuildContext)? placeholderBuilder;

  const SvgPictureNetwork(
    this.assetName, {
    super.key,
    this.package,
    this.height,
    this.width,
    this.color,
    this.fit = BoxFit.contain,
    this.placeholderBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.network(
      assetName,
      height: height,
      width: width,
      color: color,
      fit: fit,
      placeholderBuilder: placeholderBuilder,
    );
  }
}
