import 'package:flutter/material.dart';

import 'image_multi_type.dart';

class RoundImageWidget extends StatelessWidget {
  const RoundImageWidget({
    Key? key,
    required this.url,
    this.height,
    this.width,
    this.fit,
    this.color,
    this.radios,
  }) : super(key: key);

  final dynamic url;
  final double? height;
  final double? width;
  final double? radios;
  final BoxFit? fit;
  final Color? color;

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
            ),
          ),
        ],
      ),
    );
  }
}
