import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/controller/opacity_controller.dart';
import 'package:get/get.dart';

class Example1 extends StatefulWidget {
  const Example1({super.key});

  @override
  State<Example1> createState() => _Example1State();
}

class _Example1State extends State<Example1> {
  // double opacity = 0.1;

  OpacityController controller = Get.put(OpacityController());

  @override
  Widget build(BuildContext context) {
    debugPrint('rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 1'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() {
              return Center(
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.red.withOpacity(controller.opacity.value),
                ),
              );
            }),
            const SizedBox(
              height: 30,
            ),
            Obx(
              () => Slider(
                value: controller.opacity.value,
                onChanged: (newValue) {
                  controller.changeOpacity(newValue);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
