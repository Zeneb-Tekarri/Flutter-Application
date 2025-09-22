import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlineshoppingapp/core/helper/app_regex.dart';
import 'package:onlineshoppingapp/core/widgets/custom_text_form_field.dart';

class EmailPasswordWidget extends StatefulWidget {
  const EmailPasswordWidget({super.key});

  @override
  State<EmailPasswordWidget> createState() => _EmailPasswordWidgetState();
}

class _EmailPasswordWidgetState extends State<EmailPasswordWidget> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        CustomTextFormField(
          hintText: "Email",
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please enter your email";
            }
            if (!AppRegex.isEmailValid(value)) {
              return "Enter a valid email address";
            }
          },
          prefixIcon: const Icon(Icons.email_outlined),
        ),
        SizedBox(height: 12.h),
        CustomTextFormField(
          hintText: "Password",
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please enter your password";
            }
            if (!AppRegex.isPasswordValid(value)) {
              return "Enter a correct password";
            }
          },
          isObscureText: true,
          prefixIcon: const Icon(Icons.lock_outline),
        ),
      ],
    ));
  }
}
