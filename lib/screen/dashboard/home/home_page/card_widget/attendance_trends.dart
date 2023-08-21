import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/color/custom_colors.dart';
import '../../../../../core/image_asset/image_files.dart';
import '../../../../../core/theme_data/text_theme.dart';

class AttendanceTrends extends StatelessWidget {
  const AttendanceTrends({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 167.h,
      width: 182.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: myTealAccent),
      child: IntrinsicHeight(
        child: Column(
          children: [
            Text(
              'Attendance \n Trends',
              style: bodyLarge(context)?.copyWith(
                color: primeColorDark(context),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Image.asset(
              ImageCore().attendanceTrends,
              height: 90.h,
              width: 105.w,
            ),
          ],
        ),
      ),
    );
  }
}
