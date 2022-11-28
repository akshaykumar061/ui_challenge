import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_challenge/utils/color_resources.dart';
import '../../../utils/style.dart';

class KnowMore extends StatelessWidget {
  const KnowMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      width: 400.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(40.r)),
          color: ColorResources.COLOR_BALANCEDCARD1),
      child: Stack(children: [
        Image.asset('assets/images/adidas.png'),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TitleText.playeverdayandyoucouldwin,
                style: TextStyle(
                  color: ColorResources.COLOR_WHITE,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w600,
                  letterSpacing:0.9
                ),
              ),
              Text(TitleText.money,
              style: TextStyle(
                  color: ColorResources.COLOR_WHITE,
                  fontSize: 35.sp,
                  fontWeight: FontWeight.w600,
                  
                ),),
                SizedBox(height: 20.h,),
              SizedBox(
                height: 40.h,
                width: 150.w,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
                   
                  ),
                  onPressed: () {},
                  child: Text(
                    TitleText.knowMore,
                    style: TextStyle(
                        color: ColorResources.Text_COLOR,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
