import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingText extends StatelessWidget {
   OnBoardingText({Key? key,required this.titleText , required this.parag , this.color = Colors.white}) : super(key: key);

  String titleText;
  String parag;
  Color color ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          titleText,
          style: TextStyle(
            fontSize: 28.sp,
            color: color,
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Text(
          parag,
          style: TextStyle(
            fontSize: 14.sp,
            color: color,
          ),
        ),
      ],
    );
  }
}
