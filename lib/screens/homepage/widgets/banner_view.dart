import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ui_challenge/screens/homepage/controller/banner_controller.dart';
import '../../../utils/color_resources.dart';

class BannerView extends StatefulWidget {
  const BannerView({super.key});

  @override
  State<BannerView> createState() => _BannerViewState();
}

class _BannerViewState extends State<BannerView> {
  @override
  void initState() {
    Get.put(BannerController()).bannerInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BannerController>(
        init: BannerController(),
        builder: (context) {
          return SizedBox(
            height: 230.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200.h,
                  child: PageView.builder(
                      controller: context.page,
                      itemCount: context.urlImages.length,
                      itemBuilder: (c, inx) {
                        return Padding(
                          padding: EdgeInsets.all(8.w),
                          child: SizedBox(
                              height: 120.h,
                              width: 250.w,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.r),
                                child: Image.network(
                                  context.urlImages[inx],
                                  fit: BoxFit.cover,
                                ),
                              )),
                        );
                      }),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 5.h,
                  width: 300.w,
                  alignment: Alignment.center,
                  child: Center(
                      child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.sp),
                        child: Container(
                          height: 5.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: context.currentPage == 0
                                ? ColorResources.INDICATOR_VISIBLE
                                : ColorResources.INDICATOR_INVISIBLE,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.sp),
                        child: Container(
                          height: 5.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: context.currentPage == 1
                                ? ColorResources.INDICATOR_VISIBLE
                                : ColorResources.INDICATOR_INVISIBLE,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.sp),
                        child: Container(
                          height: 5.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: context.currentPage == 2
                                ? ColorResources.INDICATOR_VISIBLE
                                : ColorResources.INDICATOR_INVISIBLE,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.sp),
                        child: Container(
                          height: 5.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: context.currentPage == 3
                                ? ColorResources.INDICATOR_VISIBLE
                                : ColorResources.INDICATOR_INVISIBLE,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.sp),
                        child: Container(
                          height: 5.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: context.currentPage == 4
                                ? ColorResources.INDICATOR_VISIBLE
                                : ColorResources.INDICATOR_INVISIBLE,
                          ),
                        ),
                      )
                    ],
                  )),
                )
              ],
            ),
          );
        });
  }
}
