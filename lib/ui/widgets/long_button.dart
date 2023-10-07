import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/app_theme.dart';

class VMLongButton extends StatelessWidget {
  String title;

  void Function() onClick;
  final Color? fillColor;

  VMLongButton({
    Key? key,
    required this.title,
    required this.onClick,
    this.fillColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 274.w,
      child: InkWell(
        onTap: onClick,
        child: Container(
          height: 42.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r),
            color: fillColor ?? AppTheme.darkGrey2,
          ),
          child: Center(
            child: Text(
              title,
              style: AppTheme.h4.copyWith(color: AppTheme.white),
            ),
          ),
        ),
      ),
    );
  }
}
