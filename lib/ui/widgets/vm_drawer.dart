import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vamos/ui/widgets/vm_tiles.dart';

import '../../utils/app_theme.dart';

class VMDrawer extends StatelessWidget {
  const VMDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      shadowColor: AppTheme.lightGrey,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30.r),
          bottomRight: Radius.circular(30.r),
        ),
        child: Container(
          color: AppTheme.white,
          child: Column(
            children: [
              SizedBox(
                height: 90.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 10.h,
                  ),
                  SvgPicture.asset(
                    "assets/images/splash.svg",
                    width: 149.w,
                  ),
                  SizedBox(
                    width: 20.h,
                  ),
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: SvgPicture.asset(
                      "assets/icons/cross.svg",
                      width: 19.w,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 42.w,
                  ),
                  CircleAvatar(
                    radius: 35.w,
                    backgroundColor: AppTheme.purple,
                    child: SvgPicture.asset(
                      "assets/icons/user.svg",
                      height: 50.w,
                      width: 50.w,
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Column(
                    children: [
                      Text(
                        "Username",
                        style: AppTheme.h2.copyWith(
                          color: AppTheme.darkGrey2,
                        ),
                      ),
                      Text(
                        "+91-1234567899",
                        style: AppTheme.h4.copyWith(
                          color: AppTheme.darkGrey2,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "assets/icons/edit.svg",
                      height: 11.w,
                      width: 11.w,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: 227.w,
                child: const Divider(
                  color: AppTheme.lightGrey,
                ),
              ),
              VMTiles(
                title: "History",
                assetPath: 'assets/icons/history.svg',
                onTap: () {},
              ),
              VMTiles(
                title: "Settings",
                assetPath: 'assets/icons/settings.svg',
                onTap: () {},
              ),
              VMTiles(
                title: "Language",
                assetPath: 'assets/icons/language.svg',
                onTap: () {},
              ),
              VMTiles(
                title: "About us",
                assetPath: 'assets/icons/flag.svg',
                onTap: () {},
              ),
              VMTiles(
                title: "Help & Support",
                assetPath: 'assets/icons/help.svg',
                onTap: () {},
              ),
              VMTiles(
                title: "Logout",
                assetPath: 'assets/icons/logout.svg',
                onTap: () {},
              ),
              SizedBox(
                width: 227.w,
                child: const Divider(
                  color: AppTheme.lightGrey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
