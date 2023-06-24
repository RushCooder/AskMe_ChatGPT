import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String iconAsset;
  final String label;
  final bool isSelected;

  const CustomIconWidget({
    required this.onTap,
    required this.iconAsset,
    required this.label,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          SvgPicture.asset(
            iconAsset,
            color: isSelected ? Color(0xff705DBB) : null,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 12.sp,
              color: isSelected ? Color(0xff705DBB) : null,
            ),
          ),
        ],
      ),
    );
  }
}
