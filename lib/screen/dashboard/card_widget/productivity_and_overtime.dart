import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/color/custom_colors.dart';
import '../../../core/image_asset/image_files.dart';
import '../../../core/theme_data/text_theme.dart';

class ProductivityAndOvertime extends StatelessWidget {
  const ProductivityAndOvertime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
