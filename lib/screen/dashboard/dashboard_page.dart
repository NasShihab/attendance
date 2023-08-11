import 'package:attendance/core/height_weight_spacing.dart';
import 'package:attendance/core/image_asset/image_files.dart';
import 'package:attendance/core/theme_data/text_theme.dart';
import 'package:attendance/screen/dashboard/card_widget/apply_for_leave.dart';
import 'package:attendance/screen/dashboard/card_widget/attendance_trends.dart';
import 'package:attendance/screen/dashboard/card_widget/current_month_attendance.dart';
import 'package:attendance/screen/dashboard/card_widget/productivity_and_overtime.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        elevation: 5,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 20.h,
          ),
          child: Column(
            children: [
              // 1st Profile Row
              Row(
                children: [
                  Text(
                    'Hello, ',
                    style: displaySmall(context)?.copyWith(
                        fontSize: 30.sp, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    'Barton',
                    style: displaySmall(context)?.copyWith(fontSize: 30.sp),
                  ),
                  Lottie.asset(
                    ImageCore().notificationLottie,
                    height: 50.h,
                    width: 50.w,
                  ),
                  const Spacer(),
                  CircleAvatar(
                    backgroundImage: AssetImage(ImageCore().profile),
                    radius: 30.r,
                  )
                ],
              ),
              height20(),

              // Cards
              Row(
                children: [
                  Column(
                    children: [
                      const CurrentMonthAttendance(),
                      height20(),
                      const ProductivityAndOvertime(),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      const ApplyFoLeave(),
                      height20(),
                      const AttendanceTrends(),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
