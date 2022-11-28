import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_challenge/screens/login/controller/authentication_controller.dart';
import 'package:ui_challenge/screens/onboarding_screen/onboarding_screen.dart';
import 'package:ui_challenge/utils/style.dart';

import '../bottom_appbar/bottom_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () async{
      bool check =await  Get.put(Authentication()).checkIsLogin();
      Get.off(check? BottomBar(): OnboardingScreen());
   
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                ImageTheme.Image1,height: 300,
              
              ),
            ],
          ),
        ));
  }
}
