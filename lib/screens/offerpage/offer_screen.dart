import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:ui_challenge/utils/color_resources.dart';
import 'package:ui_challenge/utils/style.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorResources.BACKGROUND_COLOR,
        appBar: AppBar(
          backgroundColor: ColorResources.BACKGROUND_COLOR,
          elevation: 0,
          title: const Text(
            TitleText.card,
            style: TextStyle(
              color: ColorResources.COLOR_BLACK,
            ),
            textAlign: TextAlign.left,
          ),
          leading: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(12),
            height: 30.h,
            width: 30.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
                color: ColorResources.COLOR_WHITE),
            child: InkWell(
              child: Icon(Icons.arrow_back,
                  color: ColorResources.COLOR_BLACK, size: 18.sp),
              onTap: () {},
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.help_outline,
                color: ColorResources.ICON_COLOR,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(10.sp),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: 220.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorResources.CARD2,
                borderRadius: BorderRadius.all(Radius.circular(20.r)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          TitleText.muvim,
                          style: TextStyle(
                              color: ColorResources.COLOR_WHITE,
                              fontSize: 20.sp),
                        ),
                        SizedBox(
                          width: 188.w,
                        ),
                        SizedBox(
                          height: 20.h,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                elevation: 1),
                            onPressed: () {},
                            icon: Icon(
                              Icons.visibility_outlined,
                              size: 10.sp,
                            ),
                            label: Text(
                              TitleText.viewdetails,
                              style: TextStyle(
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      TitleText.cardnumber,
                      style: TextStyle(color: Colors.white, fontSize: 20.sp),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text(
                              TitleText.cvv,
                              style: TextStyle(
                                color: ColorResources.COLOR_WHITE,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            const Text(
                              '***',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 50.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              TitleText.valid,
                              style: TextStyle(
                                color: ColorResources.COLOR_WHITE,
                                fontSize: 12.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              '07/25',
                              style: TextStyle(
                                color: ColorResources.COLOR_WHITE,
                                fontSize: 12.sp,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            const Text(
              TitleText.settings,
              style: TextStyle(
                color: ColorResources.COLOR_BLACK,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 50.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        color: ColorResources.COLOR_WHITE,
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0.h,
                            bottom: 30.h,
                            child: Container(
                              width: 50.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.r),
                                    topRight: Radius.circular(10.r),
                                  ),
                                  color: ColorResources.Text_COLOR),
                              child: Padding(
                                padding:
                                    EdgeInsets.fromLTRB(10.w, 22.h, 10.w, 0.h),
                                child: const Icon(Icons.credit_card),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 5.h,
                              left: 15.w,
                              right: 15.w,
                              bottom: 0.h,
                              child: Text(
                                TitleText.card,
                                style: TextStyle(
                                    color: ColorResources.COLOR_WHITE,
                                    fontSize: 9.sp),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      TitleText.request,
                      style: TextStyle(
                          color: ColorResources.COLOR_BLACK, fontSize: 10.sp),
                    )
                  ],
                ),
                SizedBox(
                  width: 40.w,
                ),
                Column(
                  children: [
                    Container(
                      height: 50.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        color: ColorResources.COLOR_WHITE,
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0.h,
                            bottom: 30.h,
                            child: Container(
                              width: 50.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.r),
                                    topRight: Radius.circular(10.r),
                                  ),
                                  color: ColorResources.Text_COLOR),
                              child: Padding(
                                padding:
                                    EdgeInsets.fromLTRB(10.w, 22.h, 10.w, 0.h),
                                child: const Icon(Icons.block),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 5.h,
                              left: 15.w,
                              right: 15.w,
                              bottom: 0.h,
                              child: Text(
                                TitleText.card,
                                style: TextStyle(
                                    color: ColorResources.COLOR_WHITE,
                                    fontSize: 9.sp),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      TitleText.block,
                      style: TextStyle(
                          color: ColorResources.COLOR_BLACK, fontSize: 10.sp),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  TitleText.limits,
                  style: TextStyle(
                      color: ColorResources.COLOR_BLACK,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  TitleText.modify,
                  style: TextStyle(
                      color: Color(0xFF674ab9), fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 130.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ColorResources.COLOR_WHITE,
                  borderRadius: BorderRadius.all(Radius.circular(20.r))),
              child: Padding(
                padding: EdgeInsets.all(20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      TitleText.daily,
                      style: TextStyle(
                          color: ColorResources.COLOR_BLACK,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 48.h,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r))),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
                          child: Container(
                              height: 49.h,
                              decoration: BoxDecoration(
                                  color: ColorResources.BACKGROUND_COLOR,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.r))),
                              child: Padding(
                                padding: EdgeInsets.all(10.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(TitleText.online),
                                    Text('\u{20B9}1000')
                                  ],
                                ),
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
