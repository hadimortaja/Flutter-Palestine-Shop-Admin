import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:palestine_shop_admin/widgets/custom_text.dart';
import 'colors.dart';

DateTime currentBackPressTime;

Future<bool> onWillPop() {
  DateTime now = DateTime.now();
  if (currentBackPressTime == null ||
      now.difference(currentBackPressTime) > Duration(seconds: 2)) {
    currentBackPressTime = now;
    Fluttertoast.showToast(msg: 'انقر مرة أخرى للمغادرة');
    return Future.value(false);
  }
  SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  return Future.value(true);
}

setToast(String msg) {
  return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: AppColors.primaryColor,
      textColor: Colors.white,
      fontSize: 16.0);
}

getSheetError(String title) {
  return Get.snackbar(
    '',
    '',
    messageText: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          title,
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.red,
        ),
        SizedBox(
          width: ScreenUtil().setWidth(10),
        ),
        Icon(
          Icons.info,
          color: Colors.red,
        ),
      ],
    ),
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.white,
  );
}

getSheetSucsses(String title) {
  return Get.snackbar(
    '',
    '',
    messageText: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          title,
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.green,
        ),
        SizedBox(
          width: ScreenUtil().setWidth(10),
        ),
        Icon(
          Icons.check,
          color: Colors.green,
        ),
      ],
    ),
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.white,
  );
}

loading() {
  return Center(
    child: CircularProgressIndicator(),
  );
}
