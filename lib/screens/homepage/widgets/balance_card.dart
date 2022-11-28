import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_challenge/utils/color_resources.dart';
import 'dart:math' as math;
import 'package:ui_challenge/utils/style.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: ColorResources.COLOR_BALANCEDCARD1),
      height: 130.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      TitleText.spendablebalance,
                      style: TextStyle(color: ColorResources.COLOR_WHITE),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          size: 30,
                          color: Colors.white,
                        ),
                        Text(
                          '0',
                          style: TextStyle(
                              fontSize: 30.sp,
                              color: ColorResources.COLOR_WHITE),
                        ),
                        SizedBox(
                          width: 35.w,
                        ),
                        Transform(
                            transform: Matrix4.rotationY(math.pi),
                            child: Icon(
                              Icons.replay,
                              size: 30.sp,
                              color: ColorResources.COLOR_WHITE,
                            ))
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 110.w,
                ),
                Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(6.w),
                        child: Icon(
                          Icons.credit_card,
                          size: 30.sp,
                          color: ColorResources.ICONCOLOR,
                        ),
                      ),
                    ),
                    Text(
                      TitleText.card,
                      style: TextStyle(
                          color: ColorResources.COLOR_WHITE, fontSize: 10.sp),
                    )
                  ],
                ),
                SizedBox(
                  width: 5.w,
                ),
                Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(6.w),
                        child: Icon(
                          Icons.account_balance_wallet_outlined,
                          size: 30.sp,
                          color: ColorResources.ICONCOLOR,
                        ),
                      ),
                    ),
                    Text(
                      TitleText.add,
                      style: TextStyle(
                          color: ColorResources.COLOR_WHITE, fontSize: 10.sp),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
