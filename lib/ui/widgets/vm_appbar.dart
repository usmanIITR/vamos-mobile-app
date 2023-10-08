import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class VMAppBar extends StatelessWidget implements PreferredSizeWidget {
  const VMAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 80.h,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 42.w,
              width: 42.w,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(15.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white
                        .withOpacity(0.6), // Apply a shadow with opacity
                    blurRadius: 20.r,
                    blurStyle: BlurStyle.inner,
                  ),
                ],
              ),
              child: IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: SvgPicture.asset(
                  'assets/icons/hamburger.svg',
                ),
                color: Colors.white,
              ),
            ),
            Container(
              height: 42.w,
              width: 42.w,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(15.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white
                        .withOpacity(0.6), // Apply a shadow with opacity
                    blurRadius: 20.r,
                    blurStyle: BlurStyle.inner,
                  ),
                ],
              ),
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/notif.svg',
                ),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
