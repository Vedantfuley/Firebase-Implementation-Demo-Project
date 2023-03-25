

import 'package:firebase/screens/Liquid_swipe.dart';
import 'package:firebase/screens/welcome_screen.dart';
import 'package:get/get.dart';

class  SplashScreenController extends GetxController{
  static SplashScreenController get find => Get.find();
  RxBool animate = false.obs;
  Future StartAnimation() async{
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 5000));
    Get.offAll(() =>  OnBoardingScreen());
  }

}