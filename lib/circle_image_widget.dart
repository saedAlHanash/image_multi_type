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
    this.height,
    this.width,
    this.radios,
    this.fit,
    this.defaultTempImage = false,
    this.memCacheHeight,
    this.memCacheWidth,
    this.maxDiskSize,
  }) : super(key: key);

  final double? size;
  final dynamic url;
  final Color? color;
  final EdgeInsets? margin;
  final EdgeInsets? padding;

  final double? height;
  final double? width;
  final double? radios;
  final BoxFit? fit;
  final bool defaultTempImage;
  final int? memCacheHeight;
  final int? memCacheWidth;
  final int? maxDiskSize;

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
        height: height,
        width: width,
        fit: fit,
        defaultTempImage: defaultTempImage,
        memCacheHeight: memCacheHeight,
        memCacheWidth: memCacheWidth,
        maxDiskSize: maxDiskSize,
      ),
    );
  }
}
