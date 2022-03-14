import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared.dart';

class FilledButton extends StatelessWidget {
  final String text;
  final Widget? child;
  final double width;
  final String color;
  final double height;
  final Function? onPressed;

  const FilledButton({
    Key? key,
    this.text = "",
    this.child,
    this.color = "",
    this.width = double.infinity,
    this.height = 50.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: hexToColor(color),
        borderRadius: BorderRadius.circular(22.0),
        boxShadow: [
          BoxShadow(
            color: hexToColor('#E5F5FF'),
            offset: Offset(0.0, 1.5),
            blurRadius: 1.5,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed as void Function()?,
          child: Center(
            child: text != ""
                ? Text(
                    text,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontFamily: "AvenirMedium"),
                  )
                : child,
          ),
        ),
      ),
    );
  }
}
