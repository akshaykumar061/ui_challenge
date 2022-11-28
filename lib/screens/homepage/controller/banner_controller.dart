import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BannerController extends GetxController {
  final urlImages = [
    'https://nordvpn.com/wp-content/uploads/social-what-is-ad-blocking.jpg',
    'https://nordvpn.com/wp-content/uploads/social-what-is-ad-blocking.jpg',
    'https://nordvpn.com/wp-content/uploads/social-what-is-ad-blocking.jpg',
    'https://nordvpn.com/wp-content/uploads/social-what-is-ad-blocking.jpg',
    'https://nordvpn.com/wp-content/uploads/social-what-is-ad-blocking.jpg',
  ];

  int currentIndex = 0;
  changeInt(int index) {
    currentIndex = index;

    update();
  }

  PageController page = PageController();

  int currentPage = 0;

  bannerInit() {
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (currentPage < 5) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      update();
      page.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }
}
