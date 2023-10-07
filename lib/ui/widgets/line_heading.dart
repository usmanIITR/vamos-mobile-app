import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_theme.dart';

class VMLineHeading extends StatelessWidget {
  const VMLineHeading({Key? key, required this.title, required this.lineWidth})
      : super(key: key);
  final String title;
  final double lineWidth;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: SizedBox(
        width: 283.5.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: AppTheme.darkGrey,
              height: 1.h,
              width: lineWidth,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Text(
                title,
                style: AppTheme.h4.copyWith(
                  color: AppTheme.darkGrey,
                ),
              ),
            ),
            Container(
              color: AppTheme.darkGrey,
              height: 1.h,
              width: lineWidth,
            ),
          ],
        ),
      ),
    );
  }
}
