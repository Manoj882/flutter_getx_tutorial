import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/controller/favourite_controller.dart';
import 'package:get/get.dart';

class Example2 extends StatefulWidget {
  const Example2({super.key});

  @override
  State<Example2> createState() => _Example2State();
}

class _Example2State extends State<Example2> {
  // List<String> fruitList = [
  //   'Mango',
  //   'Apple',
  //   'Banana',
  //   'Orange',
  //   'Grape',
  //   'Guava'
  // ];
  //
  // List<String> favFruitList = [];

  FavouriteController controller = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    debugPrint('rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 2'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: controller.fruitList.length,
              itemBuilder: (_, index) {
                return ListTile(
                  onTap: () {
                    controller.toggleFavourite(index);
                  },
                  title: Text(controller.fruitList[index].toString()),
                  trailing: Obx(
                    () => Icon(
                      Icons.favorite,
                      color: controller.favFruitList
                              .contains(controller.fruitList[index].toString())
                          ? Colors.redAccent
                          : Colors.white,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
