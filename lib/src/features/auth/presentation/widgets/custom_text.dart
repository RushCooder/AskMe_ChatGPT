import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constant.dart';

class CustomTitle extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;

  CustomTitle({
    required this.text,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24.sp,
        color: headingColor,
        fontWeight: fontWeight,
      ),
    );
  }
}

class CustomSubTitle extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;

  CustomSubTitle({
    required this.text,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14.sp,
        color: TextColor,
        fontWeight: fontWeight,
      ),
    );
  }
}
