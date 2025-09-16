import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlineshoppingapp/core/constant/color.dart';

class OtherLoginCustom extends StatelessWidget {
  const OtherLoginCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 40,
          height: 40,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 0.5.w,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: AppColor.lightPinkColor),
                  borderRadius: BorderRadius.circular(40.r))),
          child: Stack(
            children: [
              Center(child: Image.asset('assets/images/google_icon.png'))
            ],
          ),
        ),
        const SizedBox(width: 16),
        Container(
          width: 40,
          height: 40,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 0.5.w,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: AppColor.lightPinkColor),
                  borderRadius: BorderRadius.circular(40.r))),
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  'assets/images/apple_icon.png',
                ),
              )
            ],
          ),
        ),
        const SizedBox(width: 16),
        Container(
          width: 40,
          height: 40,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 0.5.w,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: AppColor.lightPinkColor),
                  borderRadius: BorderRadius.circular(40.r))),
          child: Stack(
            children: [
              Center(child: Image.asset('assets/images/facebook_icon.png'))
            ],
          ),
        )
      ],
    );
  }
}
