import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../premium_account/premium_account.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_fromField.dart';
import '../login_screen/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController userName = TextEditingController();

  TextEditingController password = TextEditingController();
  TextEditingController cPassword = TextEditingController();

  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 76),
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Signup',
                        style: TextStyle(
                          fontSize: 24.sp,
                          color: headingColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Please Enter your correct details to Sign Up',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: TextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 32.h),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            CustomTextField(
                                controller: userName,
                                labelText: 'Enter Username'),
                            SizedBox(height: 16.h),
                            CustomTextField(
                              controller: password,
                              obscureText: !isPasswordVisible,
                              labelText: 'New Password',
                              suffixIcon: isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              onPressed: () {
                                setState(() {
                                  isPasswordVisible = !isPasswordVisible;
                                });
                              },
                            ),
                            SizedBox(height: 16.h),
                            CustomTextField(
                              controller: password,
                              obscureText: !isPasswordVisible,
                              labelText: 'Confirm New Password',
                              suffixIcon: isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              onPressed: () {
                                setState(() {
                                  isPasswordVisible = !isPasswordVisible;
                                });
                              },
                            ),
                            SizedBox(height: 32.h),
                            CustomButton(
                              text: 'Signup',
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => PremiumAccountScreen(),
                                ));
                              },
                            ),
                            SizedBox(height: 32.h),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 0.5,
                                    color: Color.fromARGB(255, 194, 198, 204),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    'Or Sign up with',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 0.5,
                                    color: Color.fromARGB(255, 194, 198, 204),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 32.h,
                            ),
                            Container(
                              height: 48.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color:
                                      headingColor, // Specify the border color
                                  width: 1, // Specify the border width
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/icons/google.png'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Continue With Google',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 32.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Already have an account?',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: TextColor,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => LoginScreen(),
                                    ));
                                  },
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16.sp,
                                      color: primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
