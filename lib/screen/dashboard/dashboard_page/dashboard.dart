import 'package:attendance/screen/dashboard/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import '../../../core/color/custom_colors.dart';
import '../../../core/image_asset/image_files.dart';
import '../../../core/theme_data/text_theme.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<Widget> screen = [
    const Scaffold(
      body: Center(
        child: Text('Notification'),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text('Chat'),
      ),
    ),
    const HomePage(),
    const Scaffold(
      body: Center(
        child: Text('Calendar'),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text('Profile'),
      ),
    ),
  ];
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 5.h),
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: BoxDecoration(
          color: focusColor(context),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.r),
            bottomRight: Radius.circular(20.r),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 2,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        height: 80.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            bottomIconText(
              context,
              lottieAsset: selectedIndex == 0
                  ? ImageCore().notificationLottie
                  : ImageCore().notificationOffLottie,
              title: 'Notification',
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
            ),
            bottomIconText(
              context,
              lottieAsset: ImageCore().chatLottie,
              title: 'Chat',
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
            ),
            bottomIconText(
              context,
              lottieAsset: ImageCore().homeOffLottie,
              title: 'Home',
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
            ),
            bottomIconText(
              context,
              lottieAsset: ImageCore().calenderLottie,
              title: 'Calendar',
              onTap: () {
                setState(() {
                  selectedIndex = 3;
                });
              },
            ),
            bottomIconText(
              context,
              lottieAsset: ImageCore().profileLottie,
              title: 'Profile',
              onTap: () {
                setState(() {
                  selectedIndex = 4;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
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
          style: bodySmall(context)?.copyWith(fontSize: 12.sp),
        )
      ],
    ),
  );
}
