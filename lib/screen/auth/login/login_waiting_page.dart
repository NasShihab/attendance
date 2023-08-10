import 'dart:async';

import 'package:attendance/core/image_asset/image_files.dart';
import 'package:attendance/core/theme_data/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/go_router/go_rout_singleton.dart';

class LoginWaitingPage extends StatefulWidget {
  const LoginWaitingPage({super.key});

  @override
  State<LoginWaitingPage> createState() => _LoginWaitingPageState();
}

class _LoginWaitingPageState extends State<LoginWaitingPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      context.go('/${GoRoutSingleton().dashboard}');
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
