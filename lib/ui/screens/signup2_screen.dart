import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../utils/app_theme.dart';
import '../widgets/line_heading.dart';
import '../widgets/long_button.dart';
import '../widgets/vm_text_field.dart';

class SignUp2Screen extends StatelessWidget {
  SignUp2Screen({Key? key}) : super(key: key);
  final _emailController = TextEditingController(text: "Email");
  final _passwordController = TextEditingController(text: "Password");
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
                  title: 'Create new account',
                  lineWidth: 60.w,
                ),
                SizedBox(height: 20.h),
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
                  onChanged: (val) {
                    _emailController.text = val;
                  },
                ),
                SizedBox(height: 20.h),
                VMTextField(
                  hintText: 'Password',
                  fillColor: AppTheme.white,
                  obscureText: true,
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
                  onChanged: (val) {
                    _passwordController.text = val;
                  },
                ),
                SizedBox(height: 20.h),
                VMTextField(
                  hintText: 'Confirm Password',
                  fillColor: AppTheme.white,
                  obscureText: true,
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
                  onChanged: (val) {
                    _passwordController.text = val;
                  },
                ),
                SizedBox(height: 20.h),
                VMLongButton(
                    title: 'Create Account',
                    fillColor: AppTheme.purple,
                    onClick: () {
                      Get.offAllNamed('/home');
                    }),
                SizedBox(height: 30.h),
                SizedBox(
                  width: 257.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Already have an account?",
                        style: AppTheme.h4.copyWith(
                            color: AppTheme.darkGrey, fontSize: 14.sp),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.offAllNamed('/login');
                        },
                        child: Text(
                          "Log in",
                          style: AppTheme.h4.copyWith(
                              color: AppTheme.purple,
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp),
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
