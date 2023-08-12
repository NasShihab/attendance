import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../../../core/color/custom_colors.dart';
import '../../../home_page.dart';

class MyTimeLineTile extends StatelessWidget {
  const MyTimeLineTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 213.h,
      width: 154.w,
      padding: EdgeInsets.all(5.r),
      decoration: BoxDecoration(
          color: const Color(
            0xffBCE8D3,
          ),
          borderRadius: BorderRadius.circular(15.r)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
          SizedBox(
            height: 28.h,
            child: TimelineTile(
              indicatorStyle:
              IndicatorStyle(height: 13.h, width: 18.w),
              lineXY: 10,
              alignment: TimelineAlign.start,
              isFirst: true,
              endChild: Text(
                'Check IN',
                style: openSans(context),
              ),
            ),
          ),
          SizedBox(
            height: 28.h,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(
                height: 13.h,
                width: 18.w,
              ),
              lineXY: 10,
              alignment: TimelineAlign.start,
              endChild: Text(
                'Check IN',
                style: openSans(context),
              ),
            ),
          ),
          SizedBox(
            height: 28.h,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(
                height: 13.h,
                width: 18.w,
              ),
              lineXY: 10,
              alignment: TimelineAlign.start,
              endChild: Text(
                'Check IN',
                style: openSans(context),
              ),
            ),
          ),
          SizedBox(
            height: 28.h,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(
                height: 13.h,
                width: 18.w,
              ),
              lineXY: 10,
              alignment: TimelineAlign.start,
              endChild: Text(
                'Check IN',
                style: openSans(context),
              ),
            ),
          ),
          SizedBox(
            height: 28.h,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(
                  height: 13.h,
                  width: 18.w,
                  color: const Color(0xff37C23C)),
              lineXY: 10,
              alignment: TimelineAlign.start,
              endChild: Text(
                'Check IN',
                style: openSans(context),
              ),
            ),
          ),
          SizedBox(
            height: 28.h,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(
                height: 13.h,
                width: 18.w,
              ),
              lineXY: 10,
              alignment: TimelineAlign.start,
              isLast: true,
              endChild: Text(
                'Check IN',
                style: openSans(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
