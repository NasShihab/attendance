import 'package:attendance/core/color/custom_colors.dart';
import 'package:attendance/core/height_weight_spacing.dart';
import 'package:attendance/core/image_asset/image_files.dart';
import 'package:attendance/core/theme_data/text_theme.dart';
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
              Row(
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
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
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      height20(),
                      Container(
                        height: 132.h,
                        width: 180.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: myTealAccent),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 1,
                              right: 1,
                              child: Image.asset(
                                ImageCore().overtime,
                                height: 70.h,
                                width: 96.w,
                              ),
                            ),
                            Text(
                              'Productivity & Overtime',
                              style: bodyLarge(context)?.copyWith(
                                color: primeColorDark(context),
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Container(
                        height: 132.h,
                        width: 180.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: myTealAccent),
                        child: Column(
                          children: [
                            Text(
                              'Apply For Leave',
                              style: bodyLarge(context)?.copyWith(
                                  color: primeColorDark(context),
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Image.asset(
                                  ImageCore().applyForLeave2,
                                  height: 46.h,
                                  width: 27.w,
                                ),
                                Image.asset(
                                  ImageCore().applyForLeave1,
                                  height: 96.h,
                                  width: 49.w,
                                ),
                                Image.asset(
                                  ImageCore().applyForLeave3,
                                  height: 74.h,
                                  width: 38.w,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      height20(),
                      Container(
                        height: 167.h,
                        width: 182.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: myTealAccent),
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
