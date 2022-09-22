import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kleio_app/screens/widgets/elveated_button_app.dart';
import 'package:kleio_app/screens/widgets/text_field_app.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SubscribeDetailsPayScreen extends StatefulWidget {
  const SubscribeDetailsPayScreen({Key? key}) : super(key: key);

  @override
  _SubscribeDetailsPayScreenState createState() =>
      _SubscribeDetailsPayScreenState();
}

class _SubscribeDetailsPayScreenState extends State<SubscribeDetailsPayScreen> {
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
            color: Colors.black,
            fontSize: 17.sp,
          ),
        ),
        // centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: ListView(
          padding: EdgeInsets.only(top: 52.h),
          children: [
            Text(
              AppLocalizations.of(context)!.personalDetails,
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 21.h,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.firstName,
                    style: TextStyle(fontSize: 10.sp),
                  ),
                  TextFieldApp(
                    keyboardType: TextInputType.text,
                    hint: 'John',
                    backgroundColorText: true,
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  Text(
                    AppLocalizations.of(context)!.lastName,
                    style: TextStyle(fontSize: 10.sp),
                  ),
                  TextFieldApp(
                    keyboardType: TextInputType.text,
                    hint: 'Doe',
                    backgroundColorText: true,
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  Text(
                    AppLocalizations.of(context)!.email,
                    style: TextStyle(fontSize: 10.sp),
                  ),
                  TextFieldApp(
                    keyboardType: TextInputType.emailAddress,
                    hint: 'john@doe.com',
                    backgroundColorText: true,
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  Text(
                    AppLocalizations.of(context)!.phone,
                    style: TextStyle(fontSize: 10.sp),
                  ),
                  TextFieldApp(
                    keyboardType: TextInputType.phone,
                    hint: '00 33 345 744',
                    backgroundColorText: true,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 33.h,
            ),
            Text(
              AppLocalizations.of(context)!.paymentInformation,
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 26.h,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.nameOnCard,
                    style: TextStyle(fontSize: 10.sp),
                  ),
                  TextFieldApp(
                    keyboardType: TextInputType.text,
                    hint: 'John',
                    backgroundColorText: true,
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  Text(
                    AppLocalizations.of(context)!.cardNumber,
                    style: TextStyle(fontSize: 10.sp),
                  ),
                  TextFieldApp(
                    keyboardType: TextInputType.text,
                    hint: 'xxxx-xxxx-xxxx-xxxx',
                    backgroundColorText: true,
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  Container(
                    width: 177.w,
                    height: 32.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'images/Mastercard.png',
                          width: 50.w,
                          height: 32.h,
                        ),
                        Image.asset(
                          'images/Amex.png',
                          width: 50.w,
                          height: 32.h,
                        ),
                        Image.asset(
                          'images/Visa.png',
                          width: 50.w,
                          height: 32.h,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  Text(
                    AppLocalizations.of(context)!.expirationDate,
                    style: TextStyle(fontSize: 10.sp),
                  ),
                  TextFieldApp(
                    keyboardType: TextInputType.emailAddress,
                    hint: 'MM-Year',
                    backgroundColorText: true,
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  Text(
                    AppLocalizations.of(context)!.securityCode,
                    style: TextStyle(fontSize: 10.sp),
                  ),
                  TextFieldApp(
                    keyboardType: TextInputType.emailAddress,
                    hint: AppLocalizations.of(context)!.cVV,
                    backgroundColorText: true,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            ElveatedButtonApp(
              textButton: AppLocalizations.of(context)!.confirmAndPay,
              routeGo: '',
              height: 60,
              width: 335,
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              AppLocalizations.of(context)!.orCheckoutWithPaypal,
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              style: TextStyle(
                fontSize: 15.sp,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 27.h,
            ),
            ElveatedButtonApp(
              textButton: AppLocalizations.of(context)!.payPal,
              routeGo: '',
              height: 40,
              width: 100,
            ),
            SizedBox(
              height: 50.h,
            ),
          ],
        ),
      ),
    );
  }
}
