import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlineshoppingapp/core/constant/color.dart';
import 'package:onlineshoppingapp/core/widgets/custom_button.dart';
import 'package:onlineshoppingapp/features/auth/logIn/view/widget/email_password_widget.dart';
import 'package:onlineshoppingapp/features/auth/logIn/view/widget/other_login_custom.dart';
import 'package:onlineshoppingapp/features/auth/signUp/view/screen/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 51.w,
            ),
            child: Image.asset(
              'assets/images/Frame 3.png',
              height: 232.h,
              width: 272.w,
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          const EmailPasswordWidget(),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 4, right: 14),
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Forget password?',
                  style: TextStyle(
                      color: AppColor.lightPinkColor,
                      fontSize: 5.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomButton(text: 'Log In', onPressed: () {}),
          ),
          SizedBox(height: 10.h),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Or Continue With',
              style: TextStyle(
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.blueGrey),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          const OtherLoginCustom(),
          SizedBox(
            height: 8.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Are you new in ZenoShop',
                style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.blueGrey),
              ),
              SizedBox(
                width: 3.w,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const SignUpScreen()));
                },
                child: Text(
                  'register?',
                  style: TextStyle(
                      fontSize: 8.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColor.lightPinkColor),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
