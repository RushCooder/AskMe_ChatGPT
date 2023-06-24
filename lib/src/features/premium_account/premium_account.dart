import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/constant.dart';
import '../auth/presentation/widgets/custom_button.dart';
import '../chat_gpt/chat_screen.dart';

class PremiumAccountScreen extends StatelessWidget {
  const PremiumAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 44),
        child: Column(
          children: [
            Container(
              height: 350.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffFFFCEA),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(150),
                  bottomRight: Radius.circular(150),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30, right: 26),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Image.asset('assets/icons/cross.png'))),
                    SizedBox(
                      height: 50.h,
                    ),
                    Image.asset('assets/icons/diamonds.png'),
                    SizedBox(
                      height: 50.h,
                    ),
                    Text(
                      'Get now your\nPremium Account',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 27.sp,
                        color: headingColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Premium Account: ${29.99} per month - Unlimited Searches and No Ads',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: headingColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/icons/ok.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Access to all features',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: headingColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/icons/ok.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Unlimited Searches',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: headingColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/icons/ok.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'No ads pop up',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: headingColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomButton(
                text: 'Continue',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ChatScreen(),
                  ));
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
