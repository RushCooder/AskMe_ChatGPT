import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/constant.dart';
import '../auth/presentation/widgets/custom_button.dart';
import '../auth/presentation/widgets/custom_text.dart';
import '../auth/presentation/widgets/payment_formField.dart';
import '../chat_gpt/chat_screen.dart';

// ignore: must_be_immutable
class PaymentMethodScreen extends StatelessWidget {
  PaymentMethodScreen({super.key});
  TextEditingController acNumber = TextEditingController();
  TextEditingController fName = TextEditingController();
  TextEditingController eDate = TextEditingController();
  TextEditingController cvc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Payment:',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: TextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '\$10.68',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: TextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 29.h),
                Container(
                  height: 59.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Image.asset('assets/icons/PayPal.png'),
                        SizedBox(width: 10.w),
                        Text(
                          'Paypal',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: TextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12.h),
                Container(
                  height: 59.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Image.asset('assets/icons/card.png'),
                        SizedBox(width: 10.w),
                        CustomSubTitle(text: 'Debit Card/Credit Card'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                CustomTitle(text: 'Add a new card'),
                SizedBox(height: 16.h),
                CustomSubTitle(text: 'Account Number'),
                SizedBox(height: 6.h),
                PaymentFormField(
                    labelText: '0000-0000-0000-0000', controller: acNumber),
                SizedBox(height: 16.h),
                CustomSubTitle(text: 'Full Name'),
                SizedBox(height: 6.h),
                PaymentFormField(
                    labelText: 'Richard Williamson', controller: fName),
                SizedBox(height: 16.h),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomSubTitle(text: 'Expire Date'),
                          SizedBox(height: 6.h),
                          PaymentFormField(
                              labelText: 'MM/YY', controller: eDate),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30.h,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomSubTitle(text: 'CVC'),
                          SizedBox(height: 6.h),
                          PaymentFormField(labelText: '000', controller: cvc),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 160.h,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomButton(
                    text: 'Done',
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
        ),
      ),
    );
  }
}
