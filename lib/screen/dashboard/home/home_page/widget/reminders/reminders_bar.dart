import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/color/custom_colors.dart';
import '../../../../../../core/height_weight_spacing.dart';
import '../../../../../../core/image_asset/image_files.dart';
import '../../../../../../core/theme_data/text_theme.dart';
import '../timeline_tile/timeline_tile.dart';

class ReminderBar extends StatelessWidget {
  const ReminderBar({super.key});

  @override
  Widget build(BuildContext context) {
    String selectedOption = 'show more';
    List<String> options = ['show more', 'Option 2', 'Option 3', 'Show More'];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // height: 94.h,
                  width: 220.w,
                  padding: EdgeInsets.only(left: 15.w, right: 5.w, bottom: 5.h),
                  decoration: BoxDecoration(
                    color: const Color(0xfffaf0ca),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: IntrinsicHeight(
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
                ),
                height15(),
                Text(
                  'Performance Check',
                  style: bodySmall(context)
                      ?.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w500),
                ),
                height15(),
                Container(
                  height: 57.h,
                  width: 232.w,
                  padding: EdgeInsets.symmetric(horizontal: 10.w
                  ),
                  decoration: BoxDecoration(
                      color: const Color(
                        0xffe7c6ff,
                      ),
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20.r,
                        child: Icon(CupertinoIcons.hand_thumbsup, size: 20.sp,),
                      ),
                      width10(),
                      Expanded(
                        child: Text(
                          "Great job, Barton! Your attendance percentage for the current month is "
                          "95%,putting you in the top 10%of the team.Keep up the good work!",
                          style: bodySmall(context)?.copyWith(fontSize: 7.sp, fontWeight: FontWeight.w500),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Spacer(),
            const MyTimeLineTile(),
          ],
        ),
      ],
    );
  }
}
