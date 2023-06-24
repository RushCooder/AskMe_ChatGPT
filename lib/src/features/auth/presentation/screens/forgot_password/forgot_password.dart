import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constant.dart';
import '../../widgets/custom_button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 44),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Color(0xffF1F1F1),
                          borderRadius: BorderRadius.circular(6)),
                      child:
                          Center(child: Image.asset('assets/icons/Icon.png')),
                    ),
                  ),
                  SizedBox(
                    width: 80.w,
                  ),
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: headingColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 43.h,
              ),
              Text(
                'Enter your email to send the code',
                style: TextStyle(
                    fontSize: 14.sp,
                    color: TextColor,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 12.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter Username',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal:
                          12.0), // Adjust the vertical padding to change the height
                ),
              ),
              Spacer(),
              CustomButton(
                text: 'Send',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
