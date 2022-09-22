import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kleio_app/screens/widgets/elveated_button_app.dart';
import 'package:kleio_app/screens/widgets/on_boarding_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset(
            'images/Image.png',
            fit: BoxFit.fill,
            height: 513.h,
            width: double.infinity,
          ),
          Column(
            children: [
              SizedBox(height: 42.h,),
              OnBoardingText(
                titleText: 'Welcome First',
                parag: 'Sed ut perspiciatis unde omnis iste natus error sit.',color: Colors.black,
              ),
              SizedBox(height: 97.h,),
              ElveatedButtonApp(
                textButton: AppLocalizations.of(context)!.getStarted,
                routeGo: '/choose_login_signup_screen',
                height: 70,
                width: 375,
                borderRadius: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
