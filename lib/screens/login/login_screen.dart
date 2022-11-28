import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ui_challenge/screens/login/controller/authentication_controller.dart';
import 'package:ui_challenge/utils/color_resources.dart';
import 'package:ui_challenge/utils/style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 final TextEditingController _mobileNumber = TextEditingController();
  Authentication authentication = Get.put(Authentication());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Authentication>(
        init: Authentication(),
        builder: (context) {
          return Scaffold(
              backgroundColor: ColorResources.BACKGROUND_COLOR,
              body: Stack(
                children: [
                  context.isLoading
                      ? Center(child: CircularProgressIndicator())
                      : Container(),
                  Container(
                    margin: EdgeInsets.only(left: 25.w, right: 25.w),
                    alignment: Alignment.center,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            TitleText.welcomehere,
                            style: TextStyle(
                                fontSize: 22.sp, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          Image.asset(
                            ImageTheme.Image1,
                            width: 150.w,
                            height: 150.h,
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          Text(
                            TitleText.Letsdoit,
                            style: TextStyle(
                                fontSize: 22.sp, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            TitleText.neverabettertime,
                            style: TextStyle(
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: ColorResources.COLOR_WHITE,
                                borderRadius: BorderRadius.circular(16.r)),
                            height: 60.h,
                            child: TextFormField(
                              controller: _mobileNumber,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  prefixText: '+91',
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black12),
                                      borderRadius: BorderRadius.circular(10)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black12),
                                      borderRadius: BorderRadius.circular(10)),
                                  labelText: TitleText.phonenumber,
                                  labelStyle: TextStyle(
                                      color: ColorResources.COLOR_BLACK)),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          SizedBox(
                            height: 50,
                            width: 150,
                            child: TextButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: ColorResources.COLOR_BLACK,
                                shape: StadiumBorder(),
                                elevation: 4,
                              ),
                              onPressed: () {
                                context.sendOtp(
                                    '+91' + _mobileNumber.text.toString());
                              },
                              icon: const Icon(
                                Icons.east_outlined,
                                color: ColorResources.COLOR_WHITE,
                              ),
                              label: const Text(
                                'OTP',
                                style: TextStyle(
                                  color: ColorResources.COLOR_WHITE,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ));
        });
  }
}
