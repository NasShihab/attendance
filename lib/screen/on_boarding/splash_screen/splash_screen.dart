import 'dart:async';
import 'package:attendance/go_router/go_rout_singleton.dart';
import 'package:attendance/screen/auth/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../custom_property/color/custom_colors.dart';
import '../../../custom_property/height_weight_spacing.dart';
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
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const AuthPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    GoRoutSingleton().splashScreen = 'splashScreen';
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.w),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset('assets/icon/nrc.png'),
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
