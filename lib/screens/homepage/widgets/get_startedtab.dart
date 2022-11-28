import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_challenge/utils/style.dart';

import '../../../utils/color_resources.dart';

class GetStartedTab extends StatelessWidget {
  const GetStartedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        color: ColorResources.COLOR_WHITE,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 1.0,
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4.r),
            child: Image.asset(
              'assets/images/logo.png',
              height: 30.h,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            TitleText.coinscashbacks,
          ),
          SizedBox(
            width: 110.w,
          ),
          InkWell(
            onTap: () {
              
            },
            child: Text(
              TitleText.getstarted,
              style: TextStyle(
                  color: ColorResources.Text_COLOR,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          Icon(
            Icons.arrow_forward,
            size: 15.sp,
          )
        ],
      ),
    );
  }
}
