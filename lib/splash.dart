import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palestine_shop_admin/pages/main_screen.dart';
import 'package:palestine_shop_admin/value/animate_do.dart';
import 'package:palestine_shop_admin/widgets/custom_image.dart';
import 'package:palestine_shop_admin/widgets/custom_text.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    var delay = Duration(seconds: 3);

    Future.delayed(delay, () {
      Get.to(() => MainScreen());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: BounceInDown(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 55.w,
                ),
                CustomPngImage(
                  width: 300.03.w,
                  height: 220.55.h,
                  imageName: 'logo',
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomText(
              " متجر فلسطين",
              fontSize: 40.sp,
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomText(
              "آدمن",
              fontSize: 40.sp,
            )
          ],
        ),
      ),
    ));
  }
}
