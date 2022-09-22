import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kleio_app/pref/shread_pref.dart';
import 'package:kleio_app/screens/widgets/elveated_button_app.dart';
import 'package:kleio_app/screens/widgets/text_field_app.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

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
        // backgroundColor: Colors.white,
        elevation: 0,
        // centerTitle: true,
        // leading: InkWell(
        //   onTap: () => Navigator.pop(context),
        //   child: Icon(
        //     Icons.arrow_back_ios,
        //     color: Colors.black,
        //     size: 24.w,
        //   ),
        // ),
        titleTextStyle: TextStyle(
          fontSize: 17.sp,
        ),
        title: const Text(
          'Login',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp ,vertical: 57.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                'Login With',
                style: TextStyle(fontSize: 10.sp),
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElveatedButtonApp(
                  textButton: 'FaceBook',
                  routeGo: 'main_screen',
                  width: 162,
                  height: 60,
                  changeColors: false,
                  color: Colors.indigo,
                ),
                SizedBox(
                  width: 10.sp,
                ),
                ElveatedButtonApp(
                  textButton: 'Twitter',
                  routeGo: 'sign_up_screen',
                  width: 162,
                  height: 60,
                ),
              ],
            ),
            SizedBox(
              height: 30.sp,
            ),
            Container(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                'OR',
                style: TextStyle(fontSize: 10.sp),
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            // TextFieldApp(
            //   keyboardType: TextInputType.emailAddress,
            //   hint: 'Email',
            // ),
            TextField(
              // style: TextStyle(fontSize: 14.sp),
              // keyboardType: ,
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
            TextField(
              // style: TextStyle(fontSize: 14.sp),
              // keyboardType: ,
              controller: _passwordTextEditingController,
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
            // TextFieldApp(
            //   keyboardType: TextInputType.text,
            //   hint: 'Password',
            //   obscure: true,
            // ),
            SizedBox(
              height: 30.sp,
            ),
            // ElveatedButtonApp(
            //
            //   textButton: 'Login',
            //   routeGo: '/home_screen',
            //   width: 335,
            //   height: 60,
            // ),

        ElevatedButton(
          onPressed: () => performLogin(),
          child: Text(
            'Login',
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.white ,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            minimumSize: Size(
              335.w,
              60.h,
            ),
          ),
        ),
            SizedBox(
              height: 28.sp,
            ),
            Row(
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
                  style: TextStyle(fontSize: 12.sp,color: Colors.blue),
                ),
              ],
            ),
            SizedBox(
              height: 11.sp,
            ),
            Row(
              children: [
                Text(
                  'forgot your password?',
                  style: TextStyle(fontSize: 12.sp),
                ),
                SizedBox(
                  width: 18.sp,
                ),
                Text(
                  'Retrive',
                  style: TextStyle(fontSize: 12.sp,color: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  void performLogin() {
    if (checkData()) {
      login();
    }
  }

  bool checkData() {
    if (_emailTextEditingController.text.isNotEmpty &&
        _passwordTextEditingController.text.isNotEmpty) {
      return true;
    }
    return false;
  }

  void login() async {
    //TODO : NAVIGATE TO MAIN SCREEN IF SUCCESS
    await SharedPrefController().saveData(email: _emailTextEditingController.text,password: _passwordTextEditingController.text);
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, '/home_screen');
    });
  }
}


