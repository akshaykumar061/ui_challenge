import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controller/homepage_controller.dart';

class OfferList extends StatelessWidget {
  const OfferList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25.r)),
      ),
      margin: EdgeInsets.symmetric(vertical: 25.h),
      height: 150.h,
      child: ListView.builder(
        itemCount: Get.put(HomePageController()).imgList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Row(
            children: <Widget>[
              SizedBox(
                  width: 150.w,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                    child: Image.asset(
                      Get.put(HomePageController()).imgList[index],
                    ),
                  )),
              SizedBox(
                width: 10.w,
              ),
            ],
          );
        },
      ),
    );
  }
}
