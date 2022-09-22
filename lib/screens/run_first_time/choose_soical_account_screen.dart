// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:kleio_app/screens/widgets/elveated_button_app.dart';
// import 'package:kleio_app/screens/widgets/on_boarding_text.dart';
//
// class ChooseSoicalAccountScreen extends StatelessWidget {
//   const ChooseSoicalAccountScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Image.asset(
//             'images/Background.png',
//             fit: BoxFit.fill,
//             height: 812.h,
//             width: double.infinity,
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20.w ,vertical: 44.h),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 ElveatedButtonApp(
//                   textButton: 'Google',
//                   routeGo: '/login_screen',
//                   height: 60,
//                   width: 335,
//                   changeColors: false,
//                 ),
//                 SizedBox(height: 15.h,),
//                 ElveatedButtonApp(
//                   textButton: 'FaceBook',
//                   routeGo: '/login_screen',
//                   height: 60,
//                   width: 335,
//                   changeColors: false,
//                   color: Colors.indigo,
//                 ),
//                 SizedBox(height: 15.h,),
//                 ElveatedButtonApp(
//                   textButton: 'Email and Password',
//                   routeGo: '/login_screen',
//                   height: 60,
//                   width: 335,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
