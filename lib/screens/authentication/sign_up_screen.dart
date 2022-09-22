import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kleio_app/pref/shread_pref.dart';
import 'package:kleio_app/screens/widgets/elveated_button_app.dart';
import 'package:kleio_app/screens/widgets/text_field_app.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;
  late SharedPrefController sharedPrefController;
  // String text = '';

  @override
  void initState() {
    // TODO: implement initState
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    // sharedPrefController = SharedPrefController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 24.w,
          ),
        ),
        titleTextStyle: TextStyle(
          fontSize: 17.sp,
        ),
        title: const Text(
          'Sign Up',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 50.sp),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // TextFieldApp(
            //   keyboardType: TextInputType.emailAddress,
            //   hint: 'Email',
            // ),
            TextField(
              // style: TextStyle(fontSize: 14.sp),
              // keyboardType: ,
              onChanged: (value) {
                 // _textEditingController.text;
                // sharedPrefController.setUserEmail(email: value);
              },
              controller: _emailTextEditingController,
              decoration: InputDecoration(
                hintText: 'Email',
                enabledBorder: InputBorder.none,
                // contentPadding: EdgeInsets.symmetric(horizontal: 20.h),
                fillColor: Colors.white,
                filled: true,
                constraints: BoxConstraints(
                  minHeight: 50.h,
                  minWidth: double.infinity,
                ),
                // border: InputBorder(borderSide: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            // TextFieldApp(
            //   keyboardType: TextInputType.text,
            //   hint: 'Password',
            //   obscure: true,
            // ),
            TextField(
              // style: TextStyle(fontSize: 14.sp),
              // keyboardType: ,
              onChanged: (value) {
                // text = _textEditingController.text;
                // sharedPrefController.setUserPassword(password: value);
              },
              controller: _passwordTextEditingController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                enabledBorder: InputBorder.none,
                // contentPadding: EdgeInsets.symmetric(horizontal: 20.h),
                fillColor: Colors.white,
                filled: true,
                constraints: BoxConstraints(
                  minHeight: 50.h,
                  minWidth: double.infinity,
                ),
                // border: InputBorder(borderSide: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            // TextFieldApp(
            //   keyboardType: TextInputType.text,
            //   hint: 'Confirm Password',
            //   obscure: true,
            // ),
            TextField(
              // style: TextStyle(fontSize: 14.sp),
              // keyboardType: ,
              // controller: _textEditingController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                enabledBorder: InputBorder.none,
                // contentPadding: EdgeInsets.symmetric(horizontal: 20.h),
                fillColor: Colors.white,
                filled: true,
                constraints: BoxConstraints(
                  minHeight: 50.h,
                  minWidth: double.infinity,
                ),
                // border: InputBorder(borderSide: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 30.sp,
            ),
            ElveatedButtonApp(
              textButton: 'Sign Up',
              routeGo: 'home_screen',
              width: 335,
              height: 60,
            ),
            SizedBox(
              height: 18.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'need an account?',
                  style: TextStyle(fontSize: 12.sp),
                ),
                SizedBox(
                  width: 18.sp,
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 12.sp, color: Colors.blue),
                ),
              ],
            ),
            SizedBox(
              height: 60.sp,
            ),
            Text(
              'or login with social media',
              style: TextStyle(fontSize: 12.sp, color: Colors.blue),
            ),
            SizedBox(
              height: 12.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.facebook),
                  color: Colors.indigo,
                  iconSize: 60.h,
                ),
                SizedBox(
                  width: 10.sp,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.facebook),
                  color: Colors.indigo,
                  iconSize: 60.h,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
