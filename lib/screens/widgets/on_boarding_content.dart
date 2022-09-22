import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'elveated_button_app.dart';
import 'on_boarding_indecator.dart';
import 'on_boarding_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OnBoardingContent extends StatelessWidget {
  OnBoardingContent({Key? key, required this.img, required this.current_Page})
      : super(key: key);

  String img;
  int current_Page = 4;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          img,
          fit: BoxFit.fill,
          height: 812.h,
          width: double.infinity,
        ),
        Container(
          alignment: AlignmentDirectional.bottomCenter,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 44.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OnBoardingText(
                titleText: AppLocalizations.of(context)!.welcome,
                parag: 'Sed ut perspiciatis unde omnis iste natus error sit.',
              ),
              SizedBox(
                height: 24.h,
              ),
              OnBoardingIndecator(
                selected: current_Page == 1,
              ),
              SizedBox(
                height: 73.h,
              ),
              Container(
                alignment: AlignmentDirectional.bottomCenter,
                // padding:
                // EdgeInsets.symmetric(horizontal: 20.w, vertical: 44.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: current_Page > 0,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, '/get_started_screen');
                        },
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 10.sp,
                          primary: Colors.white,
                          minimumSize: Size(
                            60.w,
                            60.h,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    ElveatedButtonApp(
                      textButton: AppLocalizations.of(context)!.next,
                      routeGo: '/get_started_screen',
                      height: 60,
                      width: 198,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
