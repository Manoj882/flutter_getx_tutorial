import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';



class CounterController extends GetxController {


  RxInt counter = 0.obs;

  incrementCounter(){
    counter.value++;
    debugPrint('counter: ${counter.value}');
  }
}
