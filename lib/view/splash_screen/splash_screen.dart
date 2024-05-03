import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix/constants/height_width/height_width.dart';
import 'package:netflix/view_model/splash_screen/splash_controller.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});

  SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        width: screenWidth(context: context),
        height: screenHeight(context: context) / 2,
        child: Image.asset(
          "assets/onenetf.gif",
        ),
      ),
    ));
  }
}
