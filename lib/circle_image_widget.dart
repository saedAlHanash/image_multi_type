import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'image_multi_type.dart';

class CircleImageWidget extends StatelessWidget {
  const CircleImageWidget({
    Key? key,
    this.size,
    required this.url,
    this.color,
    this.margin,
    this.padding,
  }) : super(key: key);

  final double? size;
  final dynamic url;
  final Color? color;
  final EdgeInsets? margin;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {

    return Container(
      height: size ?? 100.0,
      width: size ?? 100.0,
      margin: margin,
      clipBehavior: Clip.hardEdge,
      padding: padding,
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        shape: BoxShape.circle,
      ),
      child: ImageMultiType(
        url: url,
        fit: BoxFit.cover,
      ),
    );
  }
}
