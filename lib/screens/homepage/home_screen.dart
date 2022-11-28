import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ui_challenge/screens/homepage/controller/homepage_controller.dart';
import 'package:ui_challenge/screens/homepage/widgets/balance_card.dart';
import 'package:ui_challenge/screens/homepage/widgets/banner_view.dart';
import 'package:ui_challenge/screens/homepage/widgets/get_startedtab.dart';
import 'package:ui_challenge/screens/homepage/widgets/know_moretab.dart';
import 'package:ui_challenge/screens/homepage/widgets/offer_list.dart';
import 'package:ui_challenge/screens/homepage/widgets/refer_earntab.dart';
import 'package:ui_challenge/screens/homepage/widgets/transcation_tab.dart';
import 'package:ui_challenge/utils/color_resources.dart';
import 'package:ui_challenge/utils/style.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorResources.BACKGROUND_COLOR,
        appBar: AppBar(
          elevation: 0,
          title: RichText(
            text: TextSpan(
              text: TitleText.title1,
              style:
                  TextStyle(color: ColorResources.COLOR_BLACK, fontSize: 18.sp),
              children: const <TextSpan>[
                TextSpan(
                    text: TitleText.title2,
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          actions: [
            Icon(
              Icons.help_outline,
              size: 28.sp,
              color: ColorResources.ICONCOLOR,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: Icon(
                Icons.notifications_none,
                color: ColorResources.ICONCOLOR,
                size: 30.sp,
              ),
            ),
          ],
          backgroundColor: ColorResources.BACKGROUND_COLOR,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.r),
            child: Column(
              children: [
                const BalanceCard(),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: Get.put(HomePageController())
                      .items
                      .asMap()
                      .entries
                      .map(
                        (MapEntry map) => _buildIcon(map.key),
                      )
                      .toList(),
                ),
                SizedBox(
                  height: 20.h,
                ),
                const BannerView(),
                SizedBox(
                  height: 20.h,
                ),
                const GetStartedTab(),
                SizedBox(
                  height: 20.h,
                ),
                const KnowMore(),
                const OfferList(),
                const ReferEarnTab(),
                SizedBox(
                  height: 20.h,
                ),
                const TransactionTab(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildIcon(int index) {
  return Column(
    children: [
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Icon(
              Get.put(HomePageController()).icons[index],
              color: ColorResources.ICON_COLOR
              // Color(0xFF5b3fd1),
            ),
          ),
          onTap: () {},
        ),
      ),
      SizedBox(
        height: 5.h,
      ),
      Text(
        Get.put(HomePageController()).items[index],
        style: TextStyle(fontSize: 10.sp),
      ),
    ],
  );
}

// ignore: non_constant_identifier_names
Widget buildImage(var Images, int index) => Container(
      margin: EdgeInsets.symmetric(horizontal: 12.sp),
      height: 150.h,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(16.r)),
      child: Image.asset(
        Images,
        fit: BoxFit.cover,
      ),
    );
