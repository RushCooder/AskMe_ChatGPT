import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../auth/presentation/widgets/custom_text.dart';

class CustomUserInfoRow extends StatelessWidget {
  final String label;
  final String value;

  const CustomUserInfoRow({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomSubTitle(text: label),
            CustomSubTitle(text: value),
          ],
        ),
        SizedBox(height: 10.h),
        Divider(),
        SizedBox(height: 8.h),
      ],
    );
  }
}
