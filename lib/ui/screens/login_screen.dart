import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vamos/ui/widgets/line_heading.dart';
import 'package:vamos/ui/widgets/vm_text_field.dart';

import '../../utils/app_theme.dart';
import '../widgets/long_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  // bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: 390.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 92.h),
                SvgPicture.asset('assets/images/splash.svg'),
                SizedBox(height: 92.h),
                VMLineHeading(
                  title: 'Log in or Sign up',
                  lineWidth: 60.w,
                ),
                SizedBox(height: 50.h),
                VMTextField(
                  hintText: 'Email',
                  fillColor: AppTheme.white,
                  elevation: 5.h,
                  prefix: SvgPicture.asset(
                    'assets/icons/email.svg',
                    width: 14.w,
                    height: 11.h,
                    colorFilter: const ColorFilter.mode(
                      AppTheme.lightGrey,
                      BlendMode.srcIn,
                    ),
                  ),
                  onChanged: (val) {},
                ),
                SizedBox(height: 50.h),
                VMTextField(
                  hintText: 'Password',
                  fillColor: AppTheme.white,
                  elevation: 5.h,
                  prefix: SvgPicture.asset(
                    'assets/icons/password.svg',
                    width: 14.w,
                    height: 11.h,
                    colorFilter: const ColorFilter.mode(
                      AppTheme.lightGrey,
                      BlendMode.srcIn,
                    ),
                  ),
                  suffix: GestureDetector(
                    onTap: () {
                      // _showPassword = !_showPassword;
                    },
                    child: SvgPicture.asset(
                      'assets/icons/eye_off.svg',
                      width: 14.w,
                      height: 11.h,
                      colorFilter: const ColorFilter.mode(
                        AppTheme.lightGrey,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  onChanged: (val) {},
                ),
                SizedBox(height: 50.h),
                VMLongButton(
                    title: 'Continue',
                    onClick: () {
                      Get.offNamed('/verify');
                    }),
                SizedBox(height: 50.h),
                SizedBox(
                  width: 257.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Didn't have an account?",
                        style: AppTheme.h4.copyWith(
                            color: AppTheme.darkGrey, fontSize: 16.sp),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.offAllNamed('/signup');
                        },
                        child: Text(
                          "Sign up",
                          style: AppTheme.h4.copyWith(
                              color: AppTheme.purple,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
