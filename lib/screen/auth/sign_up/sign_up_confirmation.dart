
import 'package:attendance/core/height_weight_spacing.dart';
import 'package:attendance/core/image_asset/image_files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/color/custom_colors.dart';
import '../../../core/theme_data/text_theme.dart';

class SignUpConfirmation extends StatelessWidget {
  const SignUpConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: myHeight(context) * .20,
              ),
              Center(
                child: Image(
                  image: AssetImage(ImageCore().check),
                ),
              ),
              height20(),
              Center(
                child: Text(
                  'SUCCESS',
                  style: displayMedium(context)
                      ?.copyWith(color: primeColor(context), fontSize: 35.sp),
                ),
              ),
              height20(),
              Text(
                'Congratulations! You have successfully signed up for our attendance app. Please login with your credentials to start using the app.',
                style:
                    bodySmall(context)?.copyWith(fontWeight: FontWeight.w700),
                maxLines: 3,
                textAlign: TextAlign.center,
              ),
              height40(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'LoginPage');
                  },
                  style: ElevatedButton.styleFrom(elevation: 0),
                  child: const Text('Return to Sign-in page'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
