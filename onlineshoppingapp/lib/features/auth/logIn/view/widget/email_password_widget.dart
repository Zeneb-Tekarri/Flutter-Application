import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlineshoppingapp/core/widgets/custom_text_form_field.dart';

class EmailPasswordWidget extends StatelessWidget {
  const EmailPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        CustomTextFormField(
          hintText: "Username or Email",
          validator: (value) {},
          prefixIcon: const Icon(Icons.email_outlined),
        ),
        SizedBox(height: 12.h),
        CustomTextFormField(
          hintText: "Password",
          validator: (value) {},
          prefixIcon: const Icon(Icons.lock_outline),
        ),
      ],
    ));
  }
}
