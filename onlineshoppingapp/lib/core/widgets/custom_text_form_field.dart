import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlineshoppingapp/core/constant/color.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.errorBorder,
      this.focuseErrorBorder,
      this.inputTextStyle,
      required this.hintText,
      this.onSaved,
      this.onChange,
      this.isObscureText,
      this.suffixIcon,
      this.prefixIcon,
      this.backgroundColor,
      required this.validator,
      this.controller});

  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focuseErrorBorder;
  final TextStyle? inputTextStyle;
  final String hintText;
  final void Function(String?)? onSaved;
  final void Function(String)? onChange;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? backgroundColor;
  final Function(String?) validator;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75.h,
      width: 272.w,
      child: TextFormField(
        controller: controller,
        onChanged: onChange,
        onSaved: onSaved,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.0625,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.blueGrey,
            fontSize: 14.sp,
            fontWeight: FontWeight.normal,
          ),
          enabledBorder: enabledBorder ?? customBorder(),
          focusedBorder: focusedBorder ?? customBorder(AppColor.lightPinkColor),
          errorBorder: errorBorder ?? customBorder(Colors.red),
          errorStyle: TextStyle(fontSize: 12.sp),
          focusedErrorBorder: focuseErrorBorder ?? customBorder(Colors.red),
        ),
        validator: (value) {
          return validator(value);
        },
        obscureText: isObscureText ?? false,
      ),
    );
  }

  OutlineInputBorder customBorder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: color ?? AppColor.violetColor,
        width: 1.5,
      ),
    );
  }
}
