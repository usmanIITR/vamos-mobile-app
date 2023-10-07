import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_theme.dart';

class VMTextField extends StatelessWidget {
  const VMTextField({
    required this.hintText,
    this.action = TextInputAction.next,
    this.controller,
    this.labelText,
    this.initialValue = '',
    this.keyboard,
    this.maxLines = 1,
    this.obscureText = false,
    this.readOnly = false,
    this.shadow = true,
    this.onChanged,
    this.validator,
    this.suffix,
    this.isFilled,
    this.fillColor,
    this.contentPadding,
    this.onSubmitted,
    this.enable = true,
    Key? key,
    this.elevation = 0,
    this.prefix,
  }) : super(key: key);

  final bool obscureText;
  final bool shadow;
  final int maxLines;
  final String initialValue;

  final String hintText;
  final String? labelText;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;

  final String? Function(String?)? validator;
  final TextInputAction action;
  final EdgeInsetsGeometry? contentPadding;
  final TextInputType? keyboard;
  final TextEditingController? controller;
  final Widget? suffix;
  final Widget? prefix;
  final bool? isFilled;
  final Color? fillColor;
  final bool enable;
  final bool readOnly;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 288.w,
      child: Material(
        elevation: elevation!,
        shadowColor: shadow ? AppTheme.lightGrey : Colors.transparent,
        borderRadius: BorderRadius.circular(4.r),
        color: fillColor,
        borderOnForeground: true,
        child: TextFormField(
          controller: controller,
          readOnly: readOnly,
          maxLines: maxLines,
          decoration: InputDecoration(
            labelText: labelText,
            hintText: hintText,
            hintStyle: AppTheme.h4.copyWith(
                color: AppTheme.lightGrey, fontWeight: FontWeight.w400),
            contentPadding:
                contentPadding ?? const EdgeInsets.fromLTRB(10, 1.0, 5.0, 1.0),
            labelStyle: AppTheme.h4.copyWith(
                color: AppTheme.lightGrey, fontWeight: FontWeight.w400),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.r),
              borderSide: BorderSide(
                color: AppTheme.lightGrey,
                width: 2.w,
              ),
              gapPadding: 1.h,
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.all(13.w),
              child: suffix,
            ),
            errorStyle: AppTheme.h4
                .copyWith(color: AppTheme.red, fontWeight: FontWeight.w300),
            prefixIconColor: AppTheme.lightGrey,
            prefixIcon: Padding(
              padding: EdgeInsets.all(13.w),
              child: prefix,
            ),
            filled: isFilled,
            fillColor: fillColor,
          ),
          initialValue: controller == null ? initialValue : null,
          keyboardType: keyboard,
          obscureText: obscureText,
          onChanged: onChanged,
          validator: validator,
          textInputAction: action,
          onFieldSubmitted: onSubmitted,
          enabled: enable,
        ),
      ),
    );
  }
}
