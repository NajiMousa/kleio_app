import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCategoriesField extends StatelessWidget {
  AddCategoriesField({
    Key? key,
    required this.imageUrl,
    required this.titleCategories,
  }) : super(key: key);

  String imageUrl;
  String titleCategories;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          imageUrl,
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Padding(
          padding: EdgeInsets.only(left: 23.sp),
          child: Container(
            padding: EdgeInsets.only(top: 77.sp),
            child: Text(
              titleCategories,
              style: TextStyle(color: Colors.white, fontSize: 26.sp),
            ),
          ),
        ),
      ],
    );
  }
}
