import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ui_challenge/screens/onboarding_screen/controller/onboarding_controller.dart';
import 'package:ui_challenge/screens/login/login_screen.dart';
import 'package:ui_challenge/utils/color_resources.dart';
import 'package:ui_challenge/utils/style.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController pageController = PageController(initialPage: 0);

  late Timer timer;

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  void initState() {
      timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
        if (Get.put(OnboardingController()).currentPage < 3) {
          Get.put(OnboardingController()).currentPage++;
        } else {
          Get.put(OnboardingController()).currentPage = 0;
        }

        pageController.animateToPage(
          Get.put(OnboardingController()).currentPage,
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
        init: OnboardingController(),
        builder: (context) {
          return Scaffold(
            body: AnnotatedRegion<SystemUiOverlayStyle>(
              value: SystemUiOverlayStyle.light,
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1, 0.4, 0.7, 0.9],
                  colors: [
                    Color(0xFF3594DD),
                    Color(0xFF4563DB),
                    Color(0xFF5036D5),
                    Color(0xFF5B16D0),
                  ],
                )),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 40.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 600.h,
                        child: PageView(
                          physics: const ClampingScrollPhysics(),
                          controller: pageController,
                          onPageChanged: (int page) {
                            context.currentPage = page;
                            context.updateUi();
                          },
                          children: [
                            Padding(
                              padding: EdgeInsets.all(40.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  Center(
                                    child: Image(
                                      image: const AssetImage(
                                          ImageTheme.Image1),
                                      height: 300.h,
                                      width: 300.w,
                                    ),
                                  ),

                                   SizedBox(
                                    height: 10.h,
                                  ),
                                  const Text(TitleText.oboardingtext1,
                                  style: TextStyle(
                         color: Colors.black,
                         fontSize: 20.0,
                         height: 1.5,
                         fontStyle: FontStyle.italic
                       ),)
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(40.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  Center(
                                    child: Image(
                                      image: const AssetImage(
                                          ImageTheme.Image2),
                                      height: 300.h,
                                      width: 300.w,
                                    ),
                                  ),
                                   SizedBox(
                                    height: 10.h,
                                  ),
                                  const Text(TitleText.oboardingtext2,
                                  style: TextStyle(
                         color: Colors.black,
                         fontSize: 20.0,
                         height: 1.5,
                         fontStyle: FontStyle.italic
                       ),)
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(40.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  Center(
                                    child: Image(
                                      image: const AssetImage(
                                          ImageTheme.Image3),
                                      height: 300.h,
                                      width: 300.w,
                                    ),
                                  ),
                                SizedBox(
                                    height: 10.h,
                                  ),
                                  const Text(TitleText.onboardingtext3,
                                  style: TextStyle(
                         color: Colors.black,
                         fontSize: 20.0,
                         height: 1.5,
                         fontStyle: FontStyle.italic
                       ),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: _buildPageIndicator(
                           currentPage:  context.currentPage, numPages: context.numPages),
                      ),
                      context.currentPage != context.numPages - 1
                          ? Container(
                              padding: EdgeInsets.symmetric(horizontal: 20.sp),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        pageController.jumpToPage(2),
                                    child: Text(
                                      'Skip',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25.sp,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    child: Text(
                                      'Next',
                                      style: TextStyle(
                                        color: ColorResources.COLOR_WHITE,
                                        fontSize: 25.sp,
                                      ),
                                    ),
                                    onPressed: () => pageController.nextPage(
                                        duration:
                                            const Duration(milliseconds: 100),
                                        curve: Curves.bounceInOut),
                                  ),
                                ],
                              ),
                            )
                          : const Text(''), // Conditional expression

                      Column(
                        children: [
                          context.currentPage == context.numPages - 1
                              ? SizedBox(
                                  height: 100.h,
                                  width: double.infinity,
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.off(const LoginScreen());
                                    },
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.only(bottom: 30.0),
                                        child: Text(
                                          'Continue',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 40.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : const Text(''), // Conditional expression
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}

List<Widget> _buildPageIndicator({required int numPages,required int currentPage}) {
  List<Widget> list = [];
  for (int i = 0; i < numPages; i++) {
    list.add(i == currentPage ? _indicator(true) : _indicator(false));
  }
  return list;
}

Widget _indicator(bool isActive) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 300),
    margin: EdgeInsets.symmetric(horizontal: 8.sp),
    height: 8.h,
    width: isActive ? 24.w : 16.w,
    decoration: BoxDecoration(
      color: isActive ? Colors.white : const Color(0xFF7B51D3),
      borderRadius: BorderRadius.all(Radius.circular(12.sp)),
    ),
  );
}
