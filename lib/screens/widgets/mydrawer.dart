import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kleio_app/pref/shread_pref.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 160.h),
        child: ListView(
          children: [
            // UserAccountsDrawerHeader(
            //   currentAccountPicture: CircleAvatar(),
            //   accountName: Text('Naji',style: TextStyle(color: Colors.black),),
            //   accountEmail: Text('naji@gmail.com',style: TextStyle(color: Colors.black),),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.only(
            //       // bottomRight: Radius.circular(25.h),
            //       // topRight: Radius.circular(25.h),
            //     ),
            //     color: Colors.white
            //   ),
            // ),
            //  ListTile(
            //
            //   leading: const Icon(
            //     Icons.settings_suggest,
            //     color: Colors.black,
            //   ),
            //   title: Text(
            //     AppLocalizations.of(context)!.suggestions,
            //     style: const TextStyle(
            //       fontSize: 15,
            //       color: Colors.grey,
            //     ),
            //   ),
            // ),
            ListTile(
              onTap: () => Navigator.pushNamed(context, '/search_screen'),
              leading: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              title: Text(
                AppLocalizations.of(context)!.search,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.pushNamed(context, '/profile_screen'),
              leading: const Icon(
                Icons.verified_user_outlined,
                color: Colors.black,
              ),
              title: Text(
                AppLocalizations.of(context)!.profile,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.pushNamed(context, '/setting_screen'),
              leading: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text(
                AppLocalizations.of(context)!.settings,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.pushNamed(context, '/contact_screen'),
              leading: const Icon(
                Icons.contacts,
                color: Colors.black,
              ),
              title: Text(
                AppLocalizations.of(context)!.contact,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ),
            ListTile(
              onTap: () async {
                await SharedPrefController().clear();
                Navigator.pushReplacementNamed(context, '/login_screen');
              },
              leading: const Icon(
                Icons.login_outlined,
                color: Colors.black,
              ),
              title:  Text(
                AppLocalizations.of(context)!.logout,
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.grey,
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.pushNamed(context, '/privacy_policy_screen'),
              title: Text(
                AppLocalizations.of(context)!.privacy,
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.grey,
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.pushNamed(context, '/support_fqs_screen'),
              title: Text(
                AppLocalizations.of(context)!.support,
                style: TextStyle(fontSize: 15.sp, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}