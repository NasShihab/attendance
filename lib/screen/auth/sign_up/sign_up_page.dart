import 'package:attendance/core/color/custom_colors.dart';
import 'package:attendance/core/height_weight_spacing.dart';
import 'package:attendance/core/image_asset/image_files.dart';
import 'package:attendance/core/text_form_field/text_form_field.dart';
import 'package:attendance/core/theme_data/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                  ImageCore().signUp,
                  height: myHeight(context) * .20,
                ),
              ),
              height20(),
              Center(
                child: Text(
                  'Sign Up',
                  style: displayMedium(context)
                      ?.copyWith(color: primeColor(context), fontSize: 35.sp),
                ),
              ),
              height20(),
              SizedBox(
                height: 50.h,
                child: CustomTextFormField(
                  labelText: 'Full Name',
                  prefixIcon: Icon(
                    CupertinoIcons.profile_circled,
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
                  labelText: 'Email',
                  prefixIcon: Icon(
                    Icons.email_outlined,
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
                    Icons.shield_outlined,
                    color: primeColor(context),
                  ),
                  suffixIcon: const Icon(
                    CupertinoIcons.eye_slash,
                    color: Colors.grey,
                  ),
                  controller: TextEditingController(),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                      activeColor: primeColor(context),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'I agree the ',
                            style: bodySmall(context),
                          ),
                          TextSpan(
                            text: 'Terms and Services',
                            style: bodySmall(context)?.copyWith(
                              color: primeColor(context),
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                          TextSpan(
                            text: ' and ',
                            style: bodySmall(context),
                          ),
                          TextSpan(
                            text: 'Privacy and Policy',
                            style: bodySmall(context)?.copyWith(
                              color: primeColor(context),
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              height10(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'SignUpConfirmation');
                  },
                  style: ElevatedButton.styleFrom(elevation: 0),
                  child: const Text('Create Account'),
                ),
              ),
              height10(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account',
                    style: bodyMedium(context),
                  ),
                  width5(),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'LoginPage');
                    },
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    child: Text(
                      'Sign In',
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
                    style: bodyMedium(context)?.copyWith(color: Colors.black),
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
