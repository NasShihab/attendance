import 'dart:async';
import 'package:attendance/core/image_asset/image_files.dart';
import 'package:attendance/go_router/go_rout_singleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../core/color/custom_colors.dart';
import '../../../core/height_weight_spacing.dart';
import '../../../theme_data/text_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      context.go('/${GoRoutSingleton().authPage}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.w),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(ImageCore().logo),
              ),
              height20(),
              Text(
                'clock-in',
                style: titleLarge(context)?.copyWith(
                  fontSize: 65.sp,
                  color: primeColor(context),
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  shadows: [
                    Shadow(
                        offset: const Offset(-4, -2),
                        color: Colors.black.withOpacity(.3),
                        blurRadius: 4),
                  ],
                ),
              ),
              height60(),
              Text(
                'Effortlessly manage your time with clock in',
                style: bodyLarge(context)?.copyWith(
                    color: primeColor(context), fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
