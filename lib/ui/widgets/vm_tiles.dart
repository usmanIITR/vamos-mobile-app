import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vamos/utils/app_theme.dart';

class VMTiles extends StatelessWidget {
  const VMTiles(
      {Key? key, required this.title, this.assetPath = '', this.onTap})
      : super(key: key);
  final String title;
  final String assetPath;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 5.h),
      child: Container(
        color: AppTheme.greyBackground,
        child: ListTile(
          leading: SvgPicture.asset(assetPath),
          title: Text(
            title,
            style: AppTheme.h3.copyWith(
              color: AppTheme.darkGrey2,
            ),
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
