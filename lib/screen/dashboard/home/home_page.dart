import 'package:attendance/core/color/custom_colors.dart';
import 'package:attendance/core/height_weight_spacing.dart';
import 'package:attendance/core/image_asset/image_files.dart';
import 'package:attendance/core/theme_data/text_theme.dart';
import 'package:attendance/screen/dashboard/home/card_widget/apply_for_leave.dart';
import 'package:attendance/screen/dashboard/home/card_widget/attendance_trends.dart';
import 'package:attendance/screen/dashboard/home/card_widget/current_month_attendance.dart';
import 'package:attendance/screen/dashboard/home/card_widget/productivity_and_overtime.dart';
import 'package:attendance/screen/dashboard/home/widget/reminders/reminders_bar.dart';
import 'package:attendance/screen/dashboard/home/widget/time_and_status_bar/time_and_status_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          'H Dashboard',
          style: titleMedium(context),
        ),
        elevation: 2,
        shadowColor: Colors.grey,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: ListView(
            children: [
              // 1st Profile Row
              height10(),
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
                      height10(),
                      const AttendanceTrends(),
                    ],
                  ),
                ],
              ),
              // Status
              height20(),
              const TimeAndStatusBar(),
              const ReminderBar(),
            ],
          ),
        ),
      ),
    );
  }
}

TextStyle openSans(BuildContext context) {
  return GoogleFonts.openSans(fontSize: 13.sp, color: primeColorDark(context));
}
