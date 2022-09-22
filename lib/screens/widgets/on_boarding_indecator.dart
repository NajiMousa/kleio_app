import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingIndecator extends StatelessWidget {
  const OnBoardingIndecator({Key? key,required this.selected}) : super(key: key);

  final bool selected ;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: selected ? Colors.blue : Colors.grey,
      ),
      width: 11.h,
      height: 11.h,
    );
  }
}
