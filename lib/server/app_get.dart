import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class AppGet extends GetxController {
  int indexScreen = 0;

  setIndexScreen(int value) {
    this.indexScreen = value;
    update();
  }
}