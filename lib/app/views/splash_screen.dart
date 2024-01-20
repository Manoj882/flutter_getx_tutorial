import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/app/utils/utils.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Utils.toastMessageCenter("Hello Guys");
          Utils.toastMessage("How are you?");
        },
      ),
    );
  }
}
