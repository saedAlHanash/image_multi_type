import 'package:flutter/material.dart';

import 'image_multi_type.dart';

class RoundImageWidget extends StatelessWidget {
  const RoundImageWidget({
    super.key,
    required this.url,
    this.height,
    this.width,
    this.fit,
    this.color,
    this.radios,
    this.defaultTempImage = false,
    this.memCacheHeight,
    this.memCacheWidth,
    this.maxDiskSize,
  });

  final dynamic url;
  final double? height;
  final double? width;
  final double? radios;
  final BoxFit? fit;
  final Color? color;
  final bool defaultTempImage;
  final int? memCacheHeight;
  final int? memCacheWidth;
  final int? maxDiskSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(radios ?? 12.0),
            child: ImageMultiType(
              url: url,
              height: height,
              width: width,
              fit: fit,
              color: color,
              defaultTempImage: defaultTempImage,
              memCacheHeight: memCacheHeight,
              memCacheWidth: memCacheWidth,
              maxDiskSize: maxDiskSize,
            ),
          ),
        ],
      ),
    );
  }
}
