import 'dart:async';
import 'package:attendance/core/color/custom_colors.dart';
import 'package:attendance/core/image_asset/image_files.dart';
import 'package:attendance/core/theme_data/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginWaitingPage extends StatefulWidget {
  const LoginWaitingPage({super.key});

  @override
  State<LoginWaitingPage> createState() => _LoginWaitingPageState();
}

class _LoginWaitingPageState extends State<LoginWaitingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, 'Dashboard');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(ImageCore().loginWaiting),
              ),
              Text(
                'Loading your account information, please wait...',
                style: bodyMedium(context),
                textAlign: TextAlign.center,
              ),
              CircularProgressIndicator(color: primeColor(context),)
            ],
          ),
        ),
      ),
    );
  }
}
