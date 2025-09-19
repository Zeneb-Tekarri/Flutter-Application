import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onlineshoppingapp/core/constant/color.dart';
import 'package:onlineshoppingapp/core/widgets/arrow_back.dart';
import 'package:onlineshoppingapp/core/widgets/custom_button.dart';
import 'package:onlineshoppingapp/core/widgets/custom_text_form_field.dart';
import 'package:onlineshoppingapp/features/auth/logIn/view/widget/other_login_custom.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var userForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ArrowBack(
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 50.w,
                    ),
                    child: Image.asset(
                      'assets/images/Frame 3.png',
                      height: 200.h,
                      width: 150.w,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Form(
                key: userForm,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "Your Name",
                        style: TextStyle(
                            color: AppColor.darkBlue,
                            fontSize: 5.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    CustomTextFormField(
                      hintText: "Full Name",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your full name";
                        }
                      },
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(top: 12, left: 14, bottom: 14),
                        child: FaIcon(FontAwesomeIcons.userPen),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "UserName",
                        style: TextStyle(
                            color: AppColor.darkBlue,
                            fontSize: 5.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    CustomTextFormField(
                      hintText: "Username",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your username";
                        }
                      },
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(top: 12, left: 14, bottom: 14),
                        child: FaIcon(FontAwesomeIcons.user),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "Phone Number",
                        style: TextStyle(
                            color: AppColor.darkBlue,
                            fontSize: 5.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    CustomTextFormField(
                      hintText: "+39 333 112 5527",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your phone number";
                        }
                      },
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(top: 12, left: 14, bottom: 14),
                        child: FaIcon(FontAwesomeIcons.mobileScreenButton),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "Email",
                        style: TextStyle(
                            color: AppColor.darkBlue,
                            fontSize: 5.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    CustomTextFormField(
                      hintText: "example@gmail.com",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your email";
                        }
                      },
                      prefixIcon: const Padding(
                          padding:
                              EdgeInsets.only(top: 12, left: 14, bottom: 14),
                          child: Icon(
                            Icons.email_outlined,
                            size: 18,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "Password",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: AppColor.darkBlue,
                            fontSize: 5.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    CustomTextFormField(
                      hintText: "*******",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your password";
                        }
                      },
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(top: 12, left: 14, bottom: 14),
                        child: Icon(
                          Icons.lock_outline_rounded,
                          size: 18,
                        ),
                      ),
                      isObscureText: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "Confirm Password",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: AppColor.darkBlue,
                            fontSize: 5.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    CustomTextFormField(
                      hintText: "*******",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your password";
                        }
                      },
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(top: 12, left: 14, bottom: 14),
                        child: Icon(
                          Icons.lock_outline_rounded,
                          size: 18,
                        ),
                      ),
                      isObscureText: true,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CustomButton(text: 'Sign Up', onPressed: () {}),
              ),
              SizedBox(height: 10.h),
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
            ],
          ),
        ),
      )),
    );
  }
}
