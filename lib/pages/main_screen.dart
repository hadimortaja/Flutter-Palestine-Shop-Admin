import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:palestine_shop_admin/pages/all_products_screen.dart';
import 'package:palestine_shop_admin/server/app_get.dart';
import 'package:palestine_shop_admin/widgets/custom_nav_bar.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // AppGet appGet =Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: GetBuilder<AppGet>(
          init: AppGet(),
          builder: (controller) {
            return PageNav.widgetOptions[controller.indexScreen];
          },
        ),
        bottomNavigationBar: CustomNavBottom());
  }
}

class PageNav {
  static List<Widget> widgetOptions = <Widget>[
    AllProductsScreen(),
    Container(),
  
  ];
}
