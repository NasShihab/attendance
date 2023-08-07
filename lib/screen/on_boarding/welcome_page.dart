import 'package:attendance/custom_property/height_weight_spacing.dart';
import 'package:attendance/theme_data/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../custom_property/color/custom_colors.dart';
import '../../go_router/go_rout_singleton.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    GoRoutSingleton().welcomePage = 'welcomePage';

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
                      offset: Offset(-4, -2),
                      color: Colors.black.withOpacity(.3),
                      blurRadius: 4
                    ),

                  ],

                ),
              ),
              height60(),
              Text(
                'Effortlessly manage your time with clock in',
                style: bodyLarge(context)?.copyWith(
                    color: primeColor(context), fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
