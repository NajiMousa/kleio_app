import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          AppLocalizations.of(context)!.privacy,
          style: TextStyle(
            // color: Colors.black,
            fontSize: 17.sp,
          ),
        ),
        centerTitle: true,
        // leading: Icon(
        //   Icons.arrow_back_ios,
        //   color: Colors.black,
        // ),
        // actions: const [
        //   Icon(
        //     Icons.menu,
        //     color: Colors.black,
        //   ),
        // ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Lorem Ipsum',style: TextStyle(
                fontSize: 15.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(height: 15.h,),
            Text(
              'Sed ut perspiciatis unde omnis iste natus error sit voluptatem'
              ' accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo'
              ' inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.'
              ' Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit Sed ',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 15.h,),
            Text(
              'Sed quia consequuntur magni dolores eos qui ratione voluptatem '
                  'sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum '
                  'quia dolor sit amet, consectetur, adipisci velit, sed quia non n'
                  'umquam eius modi tempora incidunt ut labore et dolore magnam aliquam '
                  'quaerat voluptatem.',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 28.h,),
            Text('Lorem Ipsum',style: TextStyle(
              fontSize: 15.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(height: 15.h,),
            Text(
              'Sed quia consequuntur magni dolores eos qui ratione voluptatem '
                  'sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum '
                  'quia dolor sit amet, consectetur, adipisci velit, sed quia non n'
                  'umquam eius modi tempora incidunt ut labore et dolore magnam aliquam '
                  'quaerat voluptatem.',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
