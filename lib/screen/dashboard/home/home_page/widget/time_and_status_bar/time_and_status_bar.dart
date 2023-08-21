import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/color/custom_colors.dart';
import '../../../../../../core/theme_data/text_theme.dart';

class TimeAndStatusBar extends StatelessWidget {
  const TimeAndStatusBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:400.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: myPrimeColor,
      ),
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.w),
      child: IntrinsicHeight(
        child: Align(
          alignment: Alignment.center,
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    'Today',
                    style:
                        bodySmall(context)?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '1 July 2023',
                    style: bodySmall(context)?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Text(
                    'Entry Time',
                    style:
                        bodySmall(context)?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '10:14 am',
                    style: bodySmall(context)?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Text(
                    'Status ',
                    style:
                        bodySmall(context)?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Present-on time',
                    style: bodySmall(context)?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
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
