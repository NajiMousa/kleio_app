import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kleio_app/screens/widgets/on_boarding_content.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  // late PageController _pageController ;
  int _current_Page = 4;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _pageController = PageController();
  // }
  //
  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   _pageController.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.zero,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 0,
            maxWidth: double.infinity,
            minHeight: 0,
            maxHeight: 812.h,
          ),
          child: PageView(
            // onPageChanged: (value) {
            //   setState(() {
            //     _current_Page = value ;
            //     print(_current_Page);
            //   });
            // },
            // controller: _pageController,
            children: [
                  OnBoardingContent(
                    img: 'images/book.png',
                    current_Page: _current_Page,
                  ),
                  OnBoardingContent(
                    img: 'images/bookWe.png',
                    current_Page: _current_Page,
                  ),
                  OnBoardingContent(
                    img: 'images/Backgroundimage.png',
                    current_Page: _current_Page,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
