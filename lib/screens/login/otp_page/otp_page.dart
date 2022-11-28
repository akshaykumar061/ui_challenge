import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ui_challenge/screens/login/controller/authentication_controller.dart';
import '../../../utils/color_resources.dart';

class OtpVerification extends StatefulWidget {
  OtpVerification({Key? key, required this.verificationId}) : super(key: key);
  String verificationId;
  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Authentication>(builder: (context) {
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
                    Image.asset(
                      'assets/images/hey.png',
                      width: 200.w,
                      height: 150.h,
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Text(
                      "OTP Verification",
                      style: TextStyle(
                          fontSize: 22.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: ColorResources.COLOR_WHITE,
                          borderRadius: BorderRadius.circular(16.r)),
                      height: 60.h,
                      child: TextFormField(
                        controller: _otpController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12),
                                borderRadius: BorderRadius.circular(10)),
                            labelText: 'Enter OTP',
                            labelStyle:
                                TextStyle(color: ColorResources.COLOR_BLACK)),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorResources.COLOR_BLACK,
                        ),
                        onPressed: () {
                          context.verifyCode(
                            verificationId: widget.verificationId,
                            code: _otpController.text.toString(),
                          );
                        },
                        child: const Text(
                          'verify',
                          style: TextStyle(
                              color: ColorResources.COLOR_WHITE,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
