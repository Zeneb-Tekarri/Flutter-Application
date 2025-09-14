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
          width: 40.w,
          height: 40.h,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 0.5.w,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: AppColor.lightPinkColor),
                  borderRadius: BorderRadius.circular(40.r))),
          child: Stack(
            children: [],
          ),
        )
      ],
    );
  }
}
