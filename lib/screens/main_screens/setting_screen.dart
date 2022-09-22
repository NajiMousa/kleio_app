import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kleio_app/database/get/language_getx_controller.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.settings),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w ,vertical: 50.h),
        child: InkWell(
          onTap: (){
            LanguageGetxController.to.changeLanguage();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Cahange Language'),
              Text(LanguageGetxController.to.language.value,style: TextStyle(color: Colors.blue),),
            ],
          ),
        ),
      ),
    );
  }
}
