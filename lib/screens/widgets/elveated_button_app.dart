import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElveatedButtonApp extends StatelessWidget {
   ElveatedButtonApp(
      {Key? key,
      required this.textButton,
      required this.routeGo,
      required this.height,
      required this.width,
      this.borderRadius = true,
      this.changeColors = true,
      this.color = Colors.white})
      : super(key: key);

  String textButton;
  String routeGo;
  int width;
  int height;
  bool borderRadius;
  bool changeColors;
  Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, routeGo);
      },
      child: Text(
        textButton,
        style: TextStyle(
          fontSize: 12.sp,
          color: changeColors ? Colors.white : Colors.black,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: changeColors ? Colors.blue : color,
        shape: borderRadius
            ? RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )
            : null,

        minimumSize: Size(
          width.w,
          height.h,
        ),
      ),
    );
  }
}
