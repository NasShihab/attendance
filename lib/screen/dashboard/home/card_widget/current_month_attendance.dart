import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/color/custom_colors.dart';
import '../../../../core/image_asset/image_files.dart';
import '../../../../core/theme_data/text_theme.dart';

class CurrentMonthAttendance extends StatelessWidget {
  const CurrentMonthAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 159.h,
      width: 180.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: myTealAccent,
      ),
      child: Column(
        children: [
          Text(
            'Current Month Attendance',
            style: bodyLarge(context)?.copyWith(
              color: primeColorDark(context),
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Spacer(),
              Image.asset(
                ImageCore().currentMonthAttendance,
                height: 90.h,
                width: 90.w,
              ),
            ],
          )
        ],
      ),
    );
  }
}
