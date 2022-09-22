import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:kleio_app/database/db_controller.dart';
import 'package:kleio_app/database/get/language_getx_controller.dart';
import 'package:kleio_app/pref/shread_pref.dart';
import 'package:kleio_app/screens/book/book_details_screen.dart';
import 'package:kleio_app/screens/book/book_show_screen.dart';
import 'package:kleio_app/screens/categories/categories_screen.dart';
import 'package:kleio_app/screens/main_screens/contact_screen.dart';
import 'package:kleio_app/screens/main_screens/home_screen.dart';
import 'package:kleio_app/screens/main_screens/launch_screen.dart';
import 'package:kleio_app/screens/authentication/login_screen.dart';
import 'package:kleio_app/screens/main_screens/setting_screen.dart';
import 'package:kleio_app/screens/on_boarding/on_boarding_screen.dart';
import 'package:kleio_app/screens/authentication/sign_up_screen.dart';
import 'package:kleio_app/screens/categories/single_categories_screen.dart';
import 'package:kleio_app/screens/book/play_book_screen.dart';
import 'package:kleio_app/screens/main_screens/profile_screen.dart';
import 'package:kleio_app/screens/main_screens/privacy_policy_screen.dart';
import 'package:kleio_app/screens/run_first_time/choose_login_signup_screen.dart';
import 'package:kleio_app/screens/run_first_time/choose_soical_account_screen.dart';
import 'package:kleio_app/screens/run_first_time/get_started_screen.dart';
import 'package:kleio_app/screens/search/search_screen.dart';
import 'package:kleio_app/screens/subscribe/subscribe_details_pay_screen.dart';
import 'package:kleio_app/screens/subscribe/subscribe_intro_screen.dart';
import 'package:kleio_app/screens/main_screens/support_fqs_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'database/get/book_model_getx_controller.dart';
import 'database/models/book_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbController().initDatabase();
  await SharedPrefController().initSharedPref();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final LanguageGetxController _languageGetxController =
      Get.put(LanguageGetxController());

  late BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: () {
          return Obx(() {
            return MaterialApp(
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              locale: Locale(_languageGetxController.language.value),
              initialRoute: '/launch_screen',
              routes: {
                '/launch_screen': (context) => LaunchScreen(),
                '/on_boarding_screen': (context) => OnBoardingScreen(),
                '/get_started_screen': (context) => GetStartedScreen(),
                '/choose_login_signup_screen': (context) =>
                    ChooseLoginSignupScreen(),
                // '/choose_soical_account_screen' : (context) => ChooseSoicalAccountScreen(),
                '/login_screen': (context) => LoginScreen(),
                '/sign_up_screen': (context) => SignUpScreen(),
                '/home_screen': (context) => HomeScreen(),
                // '/single_categories_screen' : (context) => SingleCategoriesScreen(),
                '/categories_screen': (context) => CategoriesScreen(),
                // '/book_show_screen' : (context) => BookShowScreen(bookModel: bookModel,),
                '/profile_screen': (context) => ProfileScreen(),
                '/sbuscribe_intro_screen': (context) => SubscribeIntroScreen(),
                '/subscribe_details_pay_screen': (context) =>
                    SubscribeDetailsPayScreen(),
                // '/play_book_screen' : (context) => PlayBookScreen(),
                // '/book_details_screen' : (context) => BookDetailsScreen(),
                '/privacy_policy_screen': (context) => PrivacyPolicyScreen(),
                '/support_fqs_screen': (context) => SupportFQsScreen(),
                '/search_screen': (context) => SearchScreen(),
                '/setting_screen': (context) => SettingScreen(),
                '/contact_screen': (context) => ContactScreen(),
              },
            );
          });
        });
  }
}
