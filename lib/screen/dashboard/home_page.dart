import 'package:attendance/core/color/custom_colors.dart';
import 'package:attendance/core/height_weight_spacing.dart';
import 'package:attendance/core/image_asset/image_files.dart';
import 'package:attendance/core/theme_data/text_theme.dart';
import 'package:attendance/screen/dashboard/home/card_widget/apply_for_leave.dart';
import 'package:attendance/screen/dashboard/home/card_widget/attendance_trends.dart';
import 'package:attendance/screen/dashboard/home/card_widget/current_month_attendance.dart';
import 'package:attendance/screen/dashboard/home/card_widget/productivity_and_overtime.dart';
import 'package:attendance/screen/dashboard/home/time_and_status_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String selectedOption = 'show more';
    List<String> options = ['show more', 'Option 2', 'Option 3', 'Show More'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'H Dashboard',
          style: titleMedium(context),
        ),
        elevation: 5,
        shadowColor: Colors.grey,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 20.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              height20(),

              // Status
              const TimeAndStatusBar(),
              height20(),
              Row(
                children: [
                  Text(
                    'Reminders',
                    style: titleLarge(context),
                  ),
                  width10(),
                  Center(
                    child: DropdownButton<String>(
                      value: selectedOption,
                      items: options.map((String option) {
                        return DropdownMenuItem<String>(
                          value: option,
                          child: Text(option),
                        );
                      }).toList(),
                      onChanged: (newValue) {},
                      style: bodySmall(context)?.copyWith(fontSize: 13.sp),
                      dropdownColor: primeColorDark(context),
                    ),
                  ),
                ],
              ),
              height10(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 94.h,
                    width: 220.w,
                    padding:
                        EdgeInsets.only(left: 15.w, right: 5.w, bottom: 5.h),
                    decoration: BoxDecoration(
                      color: const Color(0xfffaf0ca),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Text(
                                'Your Leave Balance Update for the Quarter:',
                                style: bodySmall(context)?.copyWith(
                                    fontSize: 12.sp,
                                    color: const Color(0xffF76B1C),
                                    fontWeight: FontWeight.w500),
                                maxLines: 3,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Image.asset(
                                ImageCore().alert,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Barton! You have 3 days of leave balance remaining for this quarter.',
                              style: bodySmall(context)?.copyWith(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w500,
                                  color: primeColorDark(context)),
                              maxLines: 3,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 213.h,
                    width: 154.w,
                    padding: EdgeInsets.all(5.r),
                    decoration: BoxDecoration(
                        color: const Color(
                          0xffBCE8D3,
                        ),
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Column(
                      children: [
                        Text(
                          'TODAY’s ACTIVITY',
                          style: GoogleFonts.openSans(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                            color: primeColorDark(context),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(),
                        Text(
                          'Check IN',
                          style: openSans(context),
                        ),
                        const Spacer(),
                        Text(
                          'BREAK TIME START',
                          style: openSans(context),
                        ),
                        const Spacer(),
                        Text(
                          'BREAK TIME DONE',
                          style: openSans(context),
                        ),
                        const Spacer(),
                        Text(
                          'LUNCH START',
                          style: openSans(context),
                        ),
                        const Spacer(),
                        Text(
                          'LUNCH DONE',
                          style: openSans(context),
                        ),
                        const Spacer(),
                        Text(
                          'CHECK OUT',
                          style: openSans(context),
                        ),
                        const Spacer(),
                      ],
                    ),
                  )
                ],
              )
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
