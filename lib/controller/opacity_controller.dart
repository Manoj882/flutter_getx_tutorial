import 'package:get/get.dart';

class OpacityController extends GetxController {
  RxDouble opacity = 0.1.obs;

  changeOpacity(double newValue) {
    opacity.value = newValue;
  }
}
