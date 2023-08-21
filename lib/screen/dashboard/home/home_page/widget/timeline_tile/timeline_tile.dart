import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';
import '../../../../../../core/color/custom_colors.dart';
import '../../home_page.dart';

class MyTimeLineTile extends StatelessWidget {
  const MyTimeLineTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 213.h,
      width: 154.w,
      padding: EdgeInsets.all(5.r),
      decoration: BoxDecoration(
          color: const Color(
            0xffBCE8D3,
          ),
          borderRadius: BorderRadius.circular(15.r)),
      child: IntrinsicHeight(
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
            myTimeLineTile(
              context,
              isFirst: true,
              isLast: false,
              isChecked: true,
              endChildText: 'Check IN',
            ),
            myTimeLineTile(
              context,
              isFirst: false,
              isLast: false,
              isChecked: true,
              endChildText: 'BREAK TIME START',
            ),
            myTimeLineTile(
              context,
              isFirst: false,
              isLast: false,
              isChecked: true,
              endChildText: 'BREAK TIME DONE',
            ),
            myTimeLineTile(
              context,
              isFirst: false,
              isLast: false,
              isChecked: true,
              endChildText: 'LUNCH START',
            ),
            myTimeLineTile(
              context,
              isFirst: false,
              isLast: false,
              isChecked: false,
              endChildText: 'LUNCH DONE',
            ),
            myTimeLineTile(
              context,
              isFirst: false,
              isLast: true,
              isChecked: false,
              endChildText: 'CHECK OUT',
            ),
          ],
        ),
      ),
    );
  }
}

Widget myTimeLineTile(
  BuildContext context, {
  required bool isFirst,
  required bool isLast,
  required isChecked,
  required String endChildText,
}) {
  return SizedBox(
    height: 30.h,
    child: TimelineTile(
      isFirst: isFirst,
      isLast: isLast,
      beforeLineStyle: LineStyle(
        color: isChecked ? const Color(0xff37C23C) : Colors.grey,
      ),
      indicatorStyle: IndicatorStyle(
        height: 13.h,
        width: 18.w,
        color: isChecked ? const Color(0xff37C23C) : Colors.grey,
        padding: EdgeInsets.only(right: 10.w, left: 15.w),
        iconStyle: isChecked
            ? IconStyle(
                iconData: Icons.check,
                color: Colors.white,
                fontSize: 10.sp,
              )
            : IconStyle(
                iconData: Icons.circle,
                color: Colors.white,
                fontSize: 8.sp,
              ),
      ),
      lineXY: 10,
      alignment: TimelineAlign.start,
      endChild: Text(
        endChildText,
        style: openSans(context).copyWith(fontSize: 10.sp),
      ),
    ),
  );
}
