import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:vamos/ui/widgets/branch_dropdown.dart';
import 'package:vamos/ui/widgets/degree_dropdown.dart';

import '../../utils/app_theme.dart';
import '../widgets/line_heading.dart';
import '../widgets/long_button.dart';
import '../widgets/vm_text_field.dart';
import '../widgets/year_dropdown.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final _usernameController = TextEditingController(text: "Username");
  final _phoneController = TextEditingController(text: "Phone No.");
  final _degreeController = TextEditingController(text: "Degree");
  final _yearController = TextEditingController(text: "Year");
  final _branchController = TextEditingController(text: "Branch");
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
                  hintText: 'Username',
                  fillColor: AppTheme.white,
                  elevation: 5.h,
                  prefix: SvgPicture.asset(
                    'assets/icons/user.svg',
                    width: 14.w,
                    height: 11.h,
                    colorFilter: const ColorFilter.mode(
                      AppTheme.lightGrey,
                      BlendMode.srcIn,
                    ),
                  ),
                  onChanged: (val) {
                    _usernameController.text = val;
                  },
                ),
                SizedBox(height: 20.h),
                VMTextField(
                  hintText: 'Phone No.',
                  fillColor: AppTheme.white,
                  keyboard: TextInputType.number,
                  elevation: 5.h,
                  prefix: SizedBox(
                    width: 14.w,
                    height: 11.h,
                    child: Center(
                      child: Text(
                        "+91",
                        style: AppTheme.h5.copyWith(
                          color: AppTheme.lightGrey,
                        ),
                      ),
                    ),
                  ),
                  onChanged: (val) {
                    _phoneController.text = val;
                  },
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: 288.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      VMDegreeDropDown(
                        onChanged: (val) {
                          _degreeController.text = val!;
                        },
                      ),
                      VMYearDropDown(
                        onChanged: (val) {
                          _yearController.text = val!;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                VMBranchDropDown(onChanged: (val) {
                  _branchController.text = val!;
                }),
                SizedBox(height: 20.h),
                VMLongButton(
                    title: 'Continue',
                    onClick: () {
                      Get.toNamed('/signup2');
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
