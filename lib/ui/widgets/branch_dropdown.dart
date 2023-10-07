import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_theme.dart';

class VMBranchDropDown extends StatelessWidget {
  VMBranchDropDown({
    Key? key,
    required this.onChanged,
  }) : super(key: key);
  void Function(String?) onChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 288.w,
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
          hint: Text(
            'Branch',
            style: AppTheme.h5.copyWith(
              color: AppTheme.lightGrey,
            ),
          ),
          style: AppTheme.h4.copyWith(
            color: AppTheme.lightGrey,
          ),
          items: const <DropdownMenuItem<String>>[
            DropdownMenuItem(value: '1', child: Text('1')),
            DropdownMenuItem(value: '2', child: Text('2')),
            DropdownMenuItem(value: '3', child: Text('3')),
            DropdownMenuItem(value: '4', child: Text('4')),
            DropdownMenuItem(value: '5', child: Text('5')),
            DropdownMenuItem(value: '6', child: Text('6')),
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
