import 'package:attendance/core/go_router/go_rout_singleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/color/custom_colors.dart';
import '../../../../../core/image_asset/image_files.dart';
import '../../../../../core/theme_data/text_theme.dart';

class ApplyFoLeave extends StatelessWidget {
  const ApplyFoLeave({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '${GoRoutSingleton().newLeave}');
      },
      child: Container(
        // height: 132.h,
        width: 180.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r), color: myTealAccent),
        child: IntrinsicHeight(
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
      ),
    );
  }
}
