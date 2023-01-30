import 'dart:io';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadImageWidget extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;
  final double radius;
  final BoxFit boxFit;
  final bool needBorder;
  final Color borderColor;
  final double borderWidth;
  final BoxShape boxShape;
  final ExtendedImageMode mode;
  final InitGestureConfigHandler? initGestureConfigHandler;

  const LoadImageWidget(this.imageUrl,
      {Key? key,
      this.width = 300,
      this.height = 300,
      this.radius = 0.0,
      this.boxFit = BoxFit.cover,
      this.needBorder = false,
      this.borderColor = Colors.white,
      this.borderWidth = 2,
      this.boxShape = BoxShape.rectangle,
      this.mode = ExtendedImageMode.none,
      this.initGestureConfigHandler})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (imageUrl.contains('http')) {
      return ExtendedImage.network(
        imageUrl,
        width: width,
        height: height,
        fit: boxFit,
        cache: true,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        border: Border.all(color: borderColor, width: needBorder ? borderWidth.w:0,strokeAlign : BorderSide.strokeAlignOutside ),
        shape: boxShape,
        mode: mode,
        initGestureConfigHandler: initGestureConfigHandler,
      );
    } else if (imageUrl.contains('assets')) {
      return ExtendedImage.asset(
        imageUrl,
        width: width,
        height: height,
        fit: boxFit,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        border: Border.all(color: borderColor, width: needBorder ? borderWidth.w:0,strokeAlign : BorderSide.strokeAlignOutside ),
        shape: boxShape,
        gaplessPlayback: true,
        mode: mode,
        initGestureConfigHandler: initGestureConfigHandler,
      );
    } else {
      return ExtendedImage.file(
        File(imageUrl),
        width: width,
        height: height,
        fit: boxFit,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        shape: boxShape,
        gaplessPlayback: true,
        mode: mode,
        initGestureConfigHandler: initGestureConfigHandler,
      );
    }
  }
}
