import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_challenge/utils/color_resources.dart';
import '../../utils/style.dart';

class ReferEarn extends StatelessWidget {
  const ReferEarn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.BACKGROUND_COLOR,
      appBar: AppBar(
        backgroundColor: ColorResources.BACKGROUND_COLOR,
        elevation: 0,
        title: const Text(
          TitleText.referEarn,
          style: TextStyle(
            color: ColorResources.COLOR_BLACK,
          ),
        ),
        leading: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(12.w),
          height: 30.h,
          width: 30.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.r),
              color: ColorResources.COLOR_WHITE),
          child: Icon(Icons.arrow_back,
              color: ColorResources.COLOR_BLACK, size: 18.sp),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.help_outline_rounded,
              color: ColorResources.ICONCOLOR,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.topRight,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 600..h),
                    width: double.infinity,
                    height: 200.h,
                    decoration: BoxDecoration(
                        color: ColorResources.RFER_CARD,
                        borderRadius: BorderRadius.all(Radius.circular(10.r))),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.w, vertical: 40.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            TitleText.earn500muvincoins,
                            style: TextStyle(
                                fontSize: 19,
                                color: ColorResources.TEXT2,
                                fontWeight: FontWeight.w900,
                                height: 1.h,
                                letterSpacing: 0.2),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            TitleText.youget5000,
                            style: TextStyle(
                                color: ColorResources.TEXT2,
                                fontSize: 10.sp,
                                height: 2.h,
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: -10,
                    top: 10,
                    child: SizedBox(
                      width: 170.w,
                      child: Image.asset(
                        ImageTheme.Imagegirls,
                        alignment: Alignment.bottomRight,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 150.h,
                    right: 0.0,
                    left: 0.0,
                    child: Padding(
                      padding: EdgeInsets.all(8.w),
                      child: Container(
                        height: 600.h,
                        decoration: BoxDecoration(
                            color: ColorResources.COLOR_WHITE,
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.r))),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 30.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                TitleText.invitefriendstomuvin,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 20.sp),
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                TitleText.youget5000muvin,
                                style: TextStyle(
                                    height: 1.5.h,
                                    letterSpacing: 0.8,
                                    color: ColorResources.TEXT3,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.sp),
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                TitleText.referralcode,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.5.sp,
                                    color: ColorResources.COLOR_BLACK),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                  height: 48.h,
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.r))),
                                  child: Padding(
                                    padding: EdgeInsets.all(8.w),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'RR522724',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        const Spacer(),
                                        const Text(
                                          TitleText.copy,
                                          style: TextStyle(
                                              color: ColorResources.Text_COLOR),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Clipboard.setData(const ClipboardData(
                                                    text: 'RR522724'))
                                                .then((value) =>
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(SnackBar(
                                                      content: const Text(
                                                          TitleText.copiedtoclipboard),
                                                      backgroundColor:
                                                          Colors.green,
                                                      elevation: 10,
                                                      behavior: SnackBarBehavior
                                                          .floating,
                                                      margin:
                                                          EdgeInsets.all(5.w),
                                                    )));
                                          },
                                          child: const Icon(
                                            Icons.copy,
                                            color: ColorResources.Text_COLOR,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                TitleText.copyyouruniquereferral,
                                style: TextStyle(
                                  height: 1.5.h,
                                ),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              const Text(TitleText.referralrewardsare),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                TitleText.walletswithacumulative,
                                style: TextStyle(
                                  height: 1.5.h,
                                ),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                TitleText.termsandconditions,
                                style: TextStyle(
                                    color: ColorResources.Text_COLOR,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp),
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              const Center(
                                child: Text(
                                  TitleText.viewmyreferrals,
                                  style: TextStyle(
                                      color: ColorResources.Text_COLOR,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              Center(
                                child: SizedBox(
                                  height: 50.h,
                                  width: 300.w,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: ColorResources.CARD2,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.r),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      TitleText.invitefriends,
                                      style: TextStyle(
                                          color: ColorResources.COLOR_WHITE),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
