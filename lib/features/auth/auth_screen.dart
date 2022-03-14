import 'package:flutter/material.dart';
import 'package:moo_bank/features/auth/auth.dart';
import 'package:moo_bank/routes/routes.dart';
import 'package:moo_bank/shared/shared.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:moo_bank/shared/widgets/filled_button.dart';

class AuthScreen extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Center(
          child: _buildItems(context),
        ),
      ),
    );
  }

  Widget _buildItems(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      children: [
        SizedBox(height: 125.w),
        Image.asset("assets/images/artworks/artwork-1.png", width: 318.w, height: 326.w),
        SizedBox(height: 28.79.w),
        Text(
          'Welcome to Moo Bank',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24.sp,
            color: hexToColor('#4F5F8E'),
            fontFamily: "AvenirHeavy"
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          'Let\'s start now!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.sp,
            color: hexToColor("#979797"),
            fontFamily: "AvenirMedium"
          ),
        ),
        SizedBox(height: 169.w),
        FilledButton(
          text: 'Begin',
          color: "#5E76FA",
          height: 50.w,
          width: 329.w,
          onPressed: () {
            Get.toNamed(Routes.AUTH + Routes.LOGIN, arguments: controller);
          },
        ),
        SizedBox(height: 20.0),
        SizedBox(height: 62.0),
      ],
    );
  }
}
