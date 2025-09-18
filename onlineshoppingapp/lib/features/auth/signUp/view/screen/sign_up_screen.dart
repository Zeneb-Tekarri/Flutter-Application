import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onlineshoppingapp/core/constant/color.dart';
import 'package:onlineshoppingapp/core/widgets/arrow_back.dart';
import 'package:onlineshoppingapp/core/widgets/custom_text_form_field.dart';

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
                  children: [
                    Text(
                      "Your Name",
                      style: TextStyle(
                          color: AppColor.darkBlue,
                          fontSize: 8.sp,
                          fontWeight: FontWeight.normal),
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
                    SizedBox(
                      height: 23.h,
                    ),
                    Text(
                      "UserName",
                      style: TextStyle(
                          color: AppColor.darkBlue,
                          fontSize: 8.sp,
                          fontWeight: FontWeight.normal),
                    ),
                    CustomTextFormField(
                        hintText: "Username",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your username";
                          }
                        }),
                    SizedBox(
                      height: 23.h,
                    ),
                    Text(
                      "Phone Number",
                      style: TextStyle(
                          color: AppColor.darkBlue,
                          fontSize: 8.sp,
                          fontWeight: FontWeight.normal),
                    ),
                    CustomTextFormField(
                        hintText: "+39 333 112 5527",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your phone number";
                          }
                        }),
                    SizedBox(
                      height: 23.h,
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                          color: AppColor.darkBlue,
                          fontSize: 8.sp,
                          fontWeight: FontWeight.normal),
                    ),
                    CustomTextFormField(
                        hintText: "example@gmail.com",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your email";
                          }
                        }),
                    SizedBox(
                      height: 23.h,
                    ),
                    Text(
                      "Password",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: AppColor.darkBlue,
                          fontSize: 8.sp,
                          fontWeight: FontWeight.normal),
                    ),
                    CustomTextFormField(
                        hintText: "******",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your password";
                          }
                        }),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
