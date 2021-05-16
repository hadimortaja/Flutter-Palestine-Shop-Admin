import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:palestine_shop_admin/server/app_get.dart';
import 'package:palestine_shop_admin/value/colors.dart';

import 'custom_image.dart';
import 'custom_text.dart';


class CustomNavBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppGet>(
      init: AppGet(),
      builder: (controller) => BottomNavigationBar(
        elevation: 0,
        // backgroundColor: Colors.white,
        currentIndex: controller.indexScreen,
        onTap: controller.setIndexScreen,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        items: [
          BottomNavigationBarItem(
            activeIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSvgImage(
                  imageName: 'home',
                  height: 17.h,
                  width: 21.w,
                  color: AppColors.primaryColor,
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustomText(
                  'Home',
                  fontSize: 10.sp,
                  color: AppColors.primaryColor,
                ),
              ],
            ),
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSvgImage(
                  imageName: 'home',
                  height: 17.h,
                  width: 21.w,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustomText(
                  'Home',
                  fontSize: 10.sp,
                  color: Colors.grey,
                ),
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            activeIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSvgImage(
                  imageName: 'mynetwork',
                  height: 17.h,
                  width: 21.w,
                  color: AppColors.primaryColor,
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustomText(
                  'My Network',
                  fontSize: 10.sp,
                  color:  AppColors.primaryColor,
                ),
              ],
            ),
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSvgImage(
                  imageName: 'mynetwork',
                  height: 17.h,
                  width: 21.w,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustomText(
                  'My Network',
                  fontSize: 10.sp,
                  color: Colors.grey,
                ),
              ],
            ),
            label: "",
          ),
           BottomNavigationBarItem(
            activeIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Container(
                 height: 17.h,
                 width: 17.w,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(3.r),
                   color: AppColors.primaryColor,
                   
                 ),
                 child: Center(child: Icon(Icons.add,color: Colors.white,size: 14.h,),),
               ),
                SizedBox(
                  height: 5.h,
                ),
                CustomText(
                  'Post',
                  fontSize: 10.sp,
                  color:  AppColors.primaryColor,
                ),
              ],
            ),
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Container(
                 height: 17.h,
                 width: 17.w,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(3.r),
                   color: Colors.grey,
                   
                 ),
                 child: Center(child: Icon(Icons.add,color: Colors.white,size: 14.h,),),
               ),
                SizedBox(
                  height: 5.h,
                ),
                CustomText(
                  'Post',
                  fontSize: 10.sp,
                  color: Colors.grey,
                ),
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            activeIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSvgImage(
                  imageName: 'discover',
                  height: 17.h,
                  width: 21.w,
                  color: AppColors.primaryColor,
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustomText(
                  'Discover',
                  fontSize: 10.sp,
                  color: AppColors.primaryColor,
                ),
              ],
            ),
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSvgImage(
                  imageName: 'discover',
                  height: 17.h,
                  width: 21.w,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustomText(
                  'Discover',
                  fontSize: 10.sp,
                  color: Colors.grey,

                ),
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            activeIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSvgImage(
                  imageName: 'jobs',
                  height: 17.h,
                  width: 21.w,
                  color: AppColors.primaryColor,
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustomText(
                  'Appli',
                  fontSize: 10.sp,
                  color: AppColors.primaryColor,
                ),
              ],
            ),
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSvgImage(
                  imageName: 'jobs',
                  height: 17.h,
                  width: 21.w,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustomText(
                  'Appli',
                  fontSize: 10.sp,
                  color: Colors.grey,
                ),
              ],
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
