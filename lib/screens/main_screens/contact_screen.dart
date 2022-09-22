import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.contact),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.h),
        child: Column(
          children: [
            Text(
              'Kleio Firm',
              style: TextStyle(color: Colors.blue, fontSize: 26.sp),
            ),
            SizedBox(height: 50.h,),
            Container(
              alignment: AlignmentDirectional.topStart,
              child:  Text(AppLocalizations.of(context)!.email),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'naji.1996@gmail.com',
                  style: TextStyle(color: Colors.blue),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.copy))
              ],
            ),
            SizedBox(height: 25.h,),
            Container(
              alignment: AlignmentDirectional.topStart,
              child:  Text(AppLocalizations.of(context)!.phone),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '+972599-123-456-789',
                  style: TextStyle(color: Colors.blue),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.call))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
