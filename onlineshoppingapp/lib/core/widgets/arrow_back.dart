import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlineshoppingapp/core/constant/color.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 48.w,
      padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 10.h),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
          shape: CircleBorder(
        side: BorderSide(
            width: 0.5.w,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: AppColor.lightPinkColor),
      )),
      child: GestureDetector(
        onTap: onTap,
        child: const Icon(Icons.arrow_back_ios),
      ),
    );
  }
}
