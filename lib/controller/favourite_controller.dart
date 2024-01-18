import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> fruitList =
      ['Mango', 'Apple', 'Banana', 'Orange', 'Grape', 'Guava'].obs;

  RxList<String> favFruitList = <String>[].obs;

  toggleFavourite(int index) {
    if (favFruitList.contains(fruitList[index].toString())) {
      favFruitList.remove(fruitList[index].toString());
    } else {
      favFruitList.add(fruitList[index].toString());
    }
  }
}
