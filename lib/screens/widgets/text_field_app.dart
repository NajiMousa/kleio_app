import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldApp extends StatelessWidget {
  TextFieldApp({
    Key? key,
    required this.keyboardType,
    required this.hint,
    this.obscure = false,
    this.addSuffixIcon = false,
    this.backgroundColorText =false
  }) : super(key: key);

  TextInputType keyboardType;
  String hint;
  bool obscure;
  bool addSuffixIcon;
  bool backgroundColorText ;

  @override
  Widget build(BuildContext context) {
    return TextField(
      // style: TextStyle(fontSize: 14.sp),
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hint,
        enabledBorder: InputBorder.none,
        // contentPadding: EdgeInsets.symmetric(horizontal: 20.h),
        fillColor: backgroundColorText ? Colors.white : Colors.grey ,
        filled: true,
        suffixIcon: addSuffixIcon ? const Icon(Icons.search,size: 24,) : null,
        constraints: BoxConstraints(
          minHeight: 50.h,
          minWidth: double.infinity,
        ),
        // border: InputBorder(borderSide: BorderRadius.circular(20)),
      ),
      obscureText: obscure,

    );
  }
}
