import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  final List<String> items = [
    'transactons',
    'orders',
    'refer',
    'profile',
  ];
  String verificationId = '';

  List<IconData> icons = [
    Icons.swap_horiz,
    Icons.card_giftcard,
    Icons.star_border,
    Icons.person_outline,
  ];

  List<String> imgList = [
    'assets/images/card.png',
    'assets/images/card2.png',
    'assets/images/card.png',
    'assets/images/card2.png',
    'assets/images/card.png',
    'assets/images/card2.png',
  ];

   
}


