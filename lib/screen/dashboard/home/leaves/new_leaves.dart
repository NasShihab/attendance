import 'package:attendance/core/color/custom_colors.dart';
import 'package:attendance/core/height_weight_spacing.dart';
import 'package:attendance/core/theme_data/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewLeave extends StatelessWidget {
  const NewLeave({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Leaves',
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'New Leave',
                  style: displaySmall(context),
                ),
              ),
              const Divider(),
              customBar(
                context,
                icon: Icons.apps,
                text1: 'Type',
                text2: 'Casual',
              ),
              height10(),
              customBar(
                context,
                icon: CupertinoIcons.pencil,
                text1: 'Cause',
                text2: 'Trip to Cannes',
              ),
              height10(),
              customBar(
                context,
                icon: CupertinoIcons.pencil,
                text1: 'Cause',
                text2: 'Trip to Cannes',
                anotherWid: Row(
                  children: [
                    Text(
                      'Time',
                      style: bodyLarge(context)?.copyWith(color: Colors.grey),
                    ),
                    width20(),
                    Text(
                      '9.30 AM',
                      style: bodyLarge(context)
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.apps,
                  size: 35.sp,
                  color: Colors.white,
                ),
                title: Text('Type'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget customBar(
  BuildContext context, {
  required dynamic icon,
  required String text1,
  required String text2,
  Widget anotherWid = const SizedBox.shrink(),
  dynamic backgroundColor = Colors.white,
}) {
  return Material(
    elevation: 3,
    borderRadius: BorderRadius.circular(20.r),
    child: Container(
      width: 390.w,
      // height: 66.h,,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20.r),
      ),
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
      child: IntrinsicHeight(
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              myHeight(context) *.2,
              Container(
                height: 50.h,
                width: 50.w,
                decoration: BoxDecoration(
                  color: canvasColor(context),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Icon(
                    icon,
                    size: 35.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              width10(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        text1,
                        style: bodyLarge(context)?.copyWith(color: Colors.grey),
                      ),
                      width20(),
                      Text(
                        text2,
                        style: bodyLarge(context)
                            ?.copyWith(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  anotherWid,
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
