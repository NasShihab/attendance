import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/color/custom_colors.dart';
import '../../../core/height_weight_spacing.dart';
import '../../../core/theme_data/text_theme.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 60.w),
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                height60(),
                Center(child: Image.asset('assets/icon/nrc.png')),
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
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: canvasColor(context),
                      radius: 50.r,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person_outline,
                              color: Colors.white,
                              size: 50.sp,
                            ),
                            Text(
                              'Employee',
                              style: GoogleFonts.montserrat(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    ),
                    width30(),
                    CircleAvatar(
                      backgroundColor: canvasColor(context),
                      radius: 50.r,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 50.sp,
                            ),
                            Text(
                              'Manager',
                              style: GoogleFonts.montserrat(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                height60(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'LoginPage');
                    },
                    child: const Text('Sign In'),
                  ),
                ),
                height20(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'SignUpPage');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: primeColor(context),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      elevation: 5,
                      shadowColor: Colors.black,
                    ),
                    child: const Text('Sign Up'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
