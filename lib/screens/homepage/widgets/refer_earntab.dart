import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_challenge/utils/color_resources.dart';
import 'package:ui_challenge/utils/style.dart';

class ReferEarnTab extends StatelessWidget {
  const ReferEarnTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: ColorResources.REFEREARNTAB,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TitleText.referEarn,
                style: TextStyle(
                    color: ColorResources.COLOR_WHITE,
                    letterSpacing: .2,
                    fontSize: 20.sp),
              ),
              Text(
                TitleText.referYourFriendsandget,
                style: TextStyle(
                    fontSize: 10.sp,
                    color: ColorResources.COLOR_WHITE,
                    letterSpacing: 1),
              )
            ],
          ),
          SizedBox(height: 60.h, child: Image.asset('assets/images/girls3.png'))
        ],
      ),
    );
  }
}
