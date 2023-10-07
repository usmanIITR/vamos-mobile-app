import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_theme.dart';

class VMDegreeDropDown extends StatelessWidget {
  VMDegreeDropDown({
    Key? key,
    required this.onChanged,
  }) : super(key: key);
  void Function(String?) onChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 132.w,
      child: Material(
        elevation: 7,
        shadowColor: AppTheme.lightGrey,
        borderRadius: BorderRadius.circular(4.r),
        child: DropdownButtonFormField(
          isExpanded: true,
          icon: const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppTheme.purple,
          ),
          elevation: 6,
          dropdownColor: AppTheme.white,
          borderRadius: BorderRadius.circular(4.r),
          focusColor: AppTheme.purple,
          hint: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/degree.svg",
                colorFilter: const ColorFilter.mode(
                  AppTheme.lightGrey,
                  BlendMode.srcIn,
                ),
                height: 24.w,
                width: 24.w,
              ),
              SizedBox(
                width: 3.w,
              ),
              Text(
                'Degree',
                style: AppTheme.h5.copyWith(
                  color: AppTheme.lightGrey,
                ),
              ),
            ],
          ),
          style: AppTheme.h4.copyWith(
            color: AppTheme.lightGrey,
          ),
          items: const <DropdownMenuItem<String>>[
            DropdownMenuItem(value: 'Btech', child: Text('Btech')),
            DropdownMenuItem(value: 'Mtech', child: Text('Mtech')),
            DropdownMenuItem(value: 'PhD', child: Text('PhD')),
            DropdownMenuItem(value: 'MBA', child: Text('MBA')),
            DropdownMenuItem(value: 'Bsc', child: Text('Bsc')),
            DropdownMenuItem(value: 'Int. MSc', child: Text('Int. MSc')),
          ],
          onChanged: onChanged,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppTheme.white,
            // focusColor: AppTheme.blue,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.r),
              borderSide: BorderSide(
                color: AppTheme.lightGrey,
                width: 2.w,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.r),
              borderSide: BorderSide(
                color: AppTheme.lightGrey,
                width: 2.w,
              ),
              gapPadding: 3.h,
            ),
          ),
        ),
      ),
    );
  }
}
