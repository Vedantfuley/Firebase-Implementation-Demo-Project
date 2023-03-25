


import 'package:firebase/constants/colors.dart';
import 'package:firebase/constants/text_strings.dart';
import 'package:firebase/screens/splash%20screen/splash_screen_controller.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase/constants/text_strings.dart';
import 'package:firebase/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreens extends StatelessWidget {
   SplashScreens({Key? key}) : super(key: key);
   final splashcontroller = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashcontroller.StartAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(() =>  AnimatedPositioned(
        duration:  Duration(milliseconds: 1600),
            top: splashcontroller.animate.value? 70 : -30,
            left:splashcontroller.animate.value? 10 : -30,
               child: Container(
               height: 110,
               width: 260,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.greenAccent,
    ),
    )),
    ),
          Obx(() => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 80,
               left: splashcontroller.animate.value ? DefaultSize : -80,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 1600),
                opacity: splashcontroller.animate.value ? 1:0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppName,style: TextStyle(
                      fontSize: 30,),),
                    Text(AppTagLine,style:
                    TextStyle(
                      fontSize: 50,
                      letterSpacing: 2,
                    ),
                    ),
                  ],
                ),
              ),
      ),
          ),
          Obx(() => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
                bottom: splashcontroller.animate.value ? 160 : -100,
                child: AnimatedOpacity(
                    duration: Duration(milliseconds: 1600),
                    opacity: splashcontroller.animate.value ? 1:0,
                    child: Image.asset('img/splashscreen.png'))),
          ),
          Obx(() =>  AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              bottom: splashcontroller.animate.value ? 40 : -40 ,
                right: DefaultSize,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 1600),
                  opacity: splashcontroller.animate.value ? 1:0,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.greenAccent,
                    ),
                  ),
                )),
          ),
    ],
      ),
    );
  }
}

