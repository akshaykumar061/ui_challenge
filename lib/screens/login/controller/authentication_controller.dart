import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui_challenge/screens/bottom_appbar/bottom_bar.dart';
import '../otp_page/otp_page.dart';

class Authentication extends GetxController {
  bool isLoading = false;

  sendOtp(String mobileNo) async {
    isLoading = true;
    update();
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: mobileNo,
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {
        isLoading = false;
        update();
        Get.off(() => OtpVerification(verificationId: verificationId));
        //navigate to otp class and pass verification id
        // verificationId = verificationid;
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  // call this funtion from otp screen
  
  Future verifyCode({
    required String verificationId,
    required String code,
  }) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      isLoading = true;
      update();
    

      SharedPreferences prefs = await SharedPreferences.getInstance();
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: code);
      await auth.signInWithCredential(credential);
      isLoading = false;
      prefs.setBool('login', true);
      update();
      Get.off(() => BottomBar());
    } on FirebaseAuthException catch (e) {
      isLoading = false;
      update();
      // UIHelpers.showToast(e.code.toString());
    }
  }

  checkIsLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool logIn = prefs.getBool('login') ?? false;
    return logIn;
  }
}
