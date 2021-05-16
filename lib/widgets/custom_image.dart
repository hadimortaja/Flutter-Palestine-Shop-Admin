import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomPngImage extends StatelessWidget {
  final String imageName;
  final double height;
  final double width;
  final BoxFit boxFit;
  final Color color;

  CustomPngImage(
      {this.imageName, this.height, this.width, this.boxFit, this.color});
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$imageName.png',
      color: color,
      height: height ?? 30.h,
      width: width ?? 30.w,
      fit: boxFit ?? BoxFit.contain,
    );
  }
}

class CustomSvgImage extends StatelessWidget {
  final String imageName;
  final double height;
  final double width;
  final Color color;
  final BoxFit boxFit;

  CustomSvgImage(
      {this.imageName, this.height, this.width, this.color, this.boxFit});
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/svg/$imageName.svg',
      height: height ?? 30.h,
      width: width ?? 30.w,
      fit: boxFit ?? BoxFit.contain,
      color: color,
    );
  }
}
