import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moo_bank/shared/constants/colors.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String labelText;
  final String placeholder;
  final Widget prefixIcon;
  final Color color;
  final double fontSize;
  final double width;
  final double height;
  final bool password;
  final String? Function(String?)? validator;

  InputField({
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.labelText = '',
    this.placeholder = '',
    this.color = Colors.white,
    this.fontSize = 22.0,
    this.width = 320,
    this.height = 60,
    this.password = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 320.w,
        height: 60.w,
        padding: EdgeInsets.all(10.w),
        child: TextField(
          autocorrect: true,
          decoration: InputDecoration(
            hintText: placeholder,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(10.0),
              child: prefixIcon
            ),
            hintStyle: TextStyle(color: Colors.grey),
            filled: true,
            fillColor: Colors.white70,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              borderSide: BorderSide(color: hexToColor("#ECEBEB"), width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: hexToColor("#5E76FA"), width: 2),
            ),
          ),
        ));
  }
}
