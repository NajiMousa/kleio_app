import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kleio_app/screens/widgets/elveated_button_app.dart';
import 'package:kleio_app/screens/widgets/on_boarding_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChooseLoginSignupScreen extends StatelessWidget {
  const ChooseLoginSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'images/BBB.png',
            fit: BoxFit.fill,
            height: 433.h,
            width: double.infinity,
          ),
          Column(
            children: [
              SizedBox(height: 42.h,),
              OnBoardingText(
                titleText: 'Welcome First',
                parag: 'Sed ut perspiciatis unde omnis iste natus error sit.',color: Colors.black,
              ),
              SizedBox(height: 48.h,),
              ElveatedButtonApp(
                textButton: AppLocalizations.of(context)!.login,
                routeGo: '/login_screen',
                height: 60,
                width: 335,
              ),
              SizedBox(height: 15.h,),
              ElveatedButtonApp(
                textButton: AppLocalizations.of(context)!.signUp,
                routeGo: '/sign_up_screen',
                height: 60,
                width: 335,
                changeColors: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
