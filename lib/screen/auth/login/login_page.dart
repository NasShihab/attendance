import 'package:attendance/core/color/custom_colors.dart';
import 'package:attendance/core/height_weight_spacing.dart';
import 'package:attendance/core/image_asset/image_files.dart';
import 'package:attendance/core/text_form_field/text_form_field.dart';
import 'package:attendance/theme_data/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Welcome Back',
          style: titleLarge(context),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: ListView(
            children: [
              Center(
                child: Image.asset(
                  ImageCore().welcome,
                  height: myHeight(context) * .30,
                ),
              ),
              SizedBox(
                height: 50.h,
                child: CustomTextFormField(
                  labelText: 'Email',
                  prefixIcon: Icon(
                    Icons.email,
                    color: primeColor(context),
                  ),
                  controller: TextEditingController(),
                ),
              ),
              height20(),
              SizedBox(
                height: 50.h,
                child: CustomTextFormField(
                  obscureText: true,
                  labelText: 'Password',
                  prefixIcon: Icon(
                    Icons.shield_rounded,
                    color: primeColor(context),
                  ),
                  suffixIcon: const Icon(
                    CupertinoIcons.eye_slash,
                    color: Colors.grey,
                  ),
                  controller: TextEditingController(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    child: Text(
                      'Forget Password',
                      style: bodyMedium(context)?.copyWith(
                        color: primeColor(context),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                        activeColor: primeColor(context),
                      ),
                      Text(
                        'Remember me',
                        style: bodySmall(context),
                      )
                    ],
                  ),
                ],
              ),
              height10(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(elevation: 0),
                  child: const Text('Sign In'),
                ),
              ),
              height10(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: bodyMedium(context),
                  ),
                  width5(),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    child: Text(
                      'Sign Up',
                      style: bodyMedium(context)?.copyWith(
                        color: primeColor(context),
                      ),
                    ),
                  ),
                ],
              ),
              height20(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    ImageCore().googleIcon,
                    height: 24.sp,
                    width: 24.sp,
                  ),
                  label: Text(
                    'Continue with Google',
                    style: bodyMedium(context),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 1,
                    side: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
