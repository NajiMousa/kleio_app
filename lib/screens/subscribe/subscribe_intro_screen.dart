import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kleio_app/screens/widgets/elveated_button_app.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SubscribeIntroScreen extends StatelessWidget {
  const SubscribeIntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          AppLocalizations.of(context)!.subscribe,
          style: TextStyle(
            // color: Colors.black,
            fontSize: 17.sp,
          ),
        ),
        // centerTitle: true,

      ),
      body: Stack(
        children: [
          Image.asset(
            'images/Image.png',
            fit: BoxFit.fill,
            width: double.infinity,
            height: 812.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Become a Premium Member',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.info,
                      size: 36.h,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 14.w,
                    ),
                    Text(
                      'Qui dolorem ipsum quia',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.info,
                      size: 36.h,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 14.w,
                    ),
                    Text(
                      'eius modi tempora incidunt ut',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.info,
                      size: 36.h,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 14.w,
                    ),
                    Text(
                      'Magnam aliquam quaerat voluptatem.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.info,
                      size: 36.h,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 14.w,
                    ),
                    Text(
                      'Neque porro quisquam',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'Just 9',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 32.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 42.h,),
                Container(
                  padding: EdgeInsets.only(bottom: 75.h),
                  child: ElveatedButtonApp(
                    textButton: AppLocalizations.of(context)!.subscribe,
                    routeGo: '/subscribe_details_pay_screen',
                    height: 60,
                    width: 335,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
