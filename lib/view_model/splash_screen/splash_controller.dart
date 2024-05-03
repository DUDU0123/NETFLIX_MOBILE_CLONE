import 'package:get/get.dart';
import 'package:netflix/view/main_page/main_page.dart';

class SplashController extends GetxController{
  @override
  void onInit() {
    Future.delayed(const Duration(milliseconds: 2500), () {
      Get.offAll(()=>MainPage());
    },);
    super.onInit();
  }
}