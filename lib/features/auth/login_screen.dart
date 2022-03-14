import 'package:flutter/material.dart';
import 'package:moo_bank/shared/shared.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:moo_bank/shared/widgets/filled_button.dart';


import 'auth_controller.dart';

class LoginScreen extends StatelessWidget {
  final AuthController controller = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.black,
          appBar: CommonWidget.appBar(
            context,
            'Sign In',
            Icons.arrow_back,
            Colors.white,
          ),
          body: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 35.0),
            child: _buildForms(context),
          ),
        ),
      ],
    );
  }

  Widget _buildForms(BuildContext context) {
    return Form(
      key: controller.loginFormKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InputField(
              controller: controller.loginEmailController,
              keyboardType: TextInputType.text,
              labelText: 'Email address',
              placeholder: 'Enter Email Address',
              prefixIcon: Image.asset(
                'assets/images/icons/phone-grey.png',
                width: 20,
                height: 20,
                fit: BoxFit.fill,
              ),
              validator: (value) {
                if (!Regex.isEmail(value!)) {
                  return 'Email format error.';
                }

                if (value.isEmpty) {
                  return 'Email is required.';
                }
                return null;
              },
            ),
            CommonWidget.rowHeight(),
            InputField(
              controller: controller.loginPasswordController,
              keyboardType: TextInputType.emailAddress,
              labelText: 'Password',
              placeholder: 'Enter Password',
              password: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Password is required.';
                }

                if (value.length < 6 || value.length > 15) {
                  return 'Password should be 6~15 characters';
                }

                return null;
              },
            ),
            CommonWidget.rowHeight(height: 80),
            BorderButton(
              text: 'Sign In',
              backgroundColor: Colors.white,
              onPressed: () {
                controller.login(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
