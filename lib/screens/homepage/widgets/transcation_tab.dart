import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_challenge/utils/color_resources.dart';
import '../../../utils/style.dart';

class TransactionTab extends StatelessWidget {
  const TransactionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280.h,
      decoration: BoxDecoration(
        color: ColorResources.COLOR_WHITE,
        borderRadius: BorderRadius.all(Radius.circular(16.r)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  TitleText.transactions,
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 15.sp),
                ),
                const Text(
                  TitleText.viewall,
                  style: TextStyle(
                      color: ColorResources.Text_COLOR,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Image.asset('assets/images/logo2.png'),
            const Text(
              TitleText.nodatatodisplay,
              style: TextStyle(fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
