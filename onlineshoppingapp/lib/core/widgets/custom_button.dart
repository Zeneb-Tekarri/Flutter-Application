import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlineshoppingapp/core/constant/color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75.h,
      width: 280.w,
      child: MaterialButton(
        color: AppColor.buttonColor,
        textColor: Colors.white,
        padding: EdgeInsets.only(right: 50.w, left: 50.w),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.r)),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
