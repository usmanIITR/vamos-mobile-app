import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../utils/app_theme.dart';
import '../widgets/countdown.dart';
import '../widgets/line_heading.dart';
import '../widgets/long_button.dart';
import '../widgets/vm_text_field.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                  title: 'Verification',
                  lineWidth: 85.w,
                ),
                SizedBox(height: 20.h),
                Text(
                  'OTP has been sent to your Email Id',
                  style: AppTheme.h4.copyWith(
                    color: AppTheme.darkGrey,
                  ),
                ),
                SizedBox(height: 25.h),
                VMTextField(
                  hintText: 'Enter OTP',
                  fillColor: AppTheme.white,
                  elevation: 5.h,
                  suffix: SizedBox(
                    width: 50.w,
                    child: Countdown(
                      animation:
                          StepTween(begin: 60, end: 0).animate(_controller),
                    ),
                  ),
                  onChanged: (val) {},
                ),
                SizedBox(height: 30.h),
                VMLongButton(
                    title: 'Verify',
                    onClick: () {
                      Get.offNamed('/signup');
                    }),
                SizedBox(height: 20.h),
                SizedBox(
                  width: 257.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Not received OTP yet?",
                        style: AppTheme.h4.copyWith(
                          color: AppTheme.darkGrey,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Resend OTP",
                          style: AppTheme.h4.copyWith(
                            color: AppTheme.purple,
                            fontWeight: FontWeight.w600,
                          ),
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
