import 'package:flutter/material.dart';
import 'package:ui_challenge/utils/color_resources.dart';
import '../offerpage/offer_screen.dart';
import '../homepage/home_screen.dart';
import '../referpage/refer_earn.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBar();
}

class _BottomBar extends State<BottomBar> {
  int _selected = 0;

  Widget get bottomNavigationBar {
    return Material(
      elevation: 15,
      borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: Container(
        
        height: 72.h,
        decoration: BoxDecoration(
            border: Border.all(width: 1.w, color: ColorResources.COLOR_WHITE),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: ColorResources.COLOR_WHITE),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            bottomIcon('home', 0, Icons.home_outlined),
            bottomIcon('refer', 1, Icons.star_border_outlined),
            bottomIcon('offers', 2, Icons.discount_outlined),
            bottomIcon('finmania', 3, Icons.grade_outlined),
            bottomIcon('more', 4, Icons.more_outlined),
          ],
        ),
      ),
    );
  }

  bottomIcon(String lable, int selected, IconData icon) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            _selected = selected;
          });
        },
        child: Center(
          child: SizedBox(
            height: 72.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: _selected == selected
                      ? const Color(0xff4232ce)
                      : const Color(0xff4232ce),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(lable,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: _selected == selected
                          ? const Color(0xff4232ce)
                          : const Color(0xff776eca),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.BACKGROUND_COLOR,
      bottomNavigationBar: bottomNavigationBar,
      body: _selected == 0
          ? const HomeScreen()
          : _selected == 1
              ? const ReferEarn()
              : _selected == 2
                  ? const OfferScreen()
                  : _selected == 3
                      ? const Center(child: Text('nothing here!'))
                      : _selected == 4
                          ? const Center(child: Text('nothing here!'))
                          : const SizedBox(),
    );
  }
}
