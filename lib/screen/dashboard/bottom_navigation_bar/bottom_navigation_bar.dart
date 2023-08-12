import 'package:attendance/core/theme_data/text_theme.dart';
import 'package:attendance/screen/dashboard/bottom_navigation_bar/bottom_icon_model/bottom_icon_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../core/color/custom_colors.dart';
import '../../../core/image_asset/image_files.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.r),
            bottomRight: Radius.circular(20.r)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 2,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      height: 80.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          list(context).length,
          (index) {
            return bottomIconText(
              context,
              lottieAsset: list(context)[index].lottieAsset,
              title: list(context)[index].title,
              onTap: list(context)[index].onTap,
            );
          },
        ),
      ),
    );
  }
}

List<BottomIconModel> list(BuildContext context) {
  return [
    BottomIconModel(
      lottieAsset: ImageCore().notificationLottie,
      title: 'Notification',
      onTap: () {
      },
    ),
    BottomIconModel(
      lottieAsset: ImageCore().chatLottie,
      title: 'Chat',
      onTap: () {
      },
    ),
    BottomIconModel(
      lottieAsset: ImageCore().homeLottie,
      title: 'Home',
      onTap: () {
      },
    ),
    BottomIconModel(
      lottieAsset: ImageCore().calenderLottie,
      title: 'Calender',
      onTap: () {
      },
    ),
    BottomIconModel(
      lottieAsset: ImageCore().profileLottie,
      title: 'Profile',
      onTap: () {
      },
    ),
  ];
}

Widget bottomIconText(
  BuildContext context, {
  required String lottieAsset,
  required String title,
  required void Function() onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Column(
      children: [
        Lottie.asset(
          lottieAsset,
          height: 56.h,
          width: 56.w,
        ),
        Text(
          title,
          style: bodySmall(context)
              ?.copyWith(color: primeColorDark(context), fontSize: 12.sp),
        )
      ],
    ),
  );
}
