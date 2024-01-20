import 'package:flutter_getx_tutorial/app/res/routes/routes_name.dart';
import 'package:flutter_getx_tutorial/app/views/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static appRoute() => [
        GetPage(
          name: RouteName.splashScreen,
          page: () => const SplashScreen(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: const Duration(milliseconds: 250),
          participatesInRootNavigator: true,
        ),
      ];
}
