import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kleio_app/database/models/book_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PlayBookScreen extends StatefulWidget {
  PlayBookScreen({Key? key , required this.bookModel}) : super(key: key);

  BookModel bookModel;

  @override
  _PlayBookScreenState createState() => _PlayBookScreenState();
}

class _PlayBookScreenState extends State<PlayBookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Image.asset(
            // 'images/bookCaver.png',
            widget.bookModel.imageUrl,
            fit: BoxFit.fill,
            width: double.infinity,
            height: 575.h,
          ),
          // Container(
          //   padding: EdgeInsets.symmetric(
          //     horizontal: 30.w,
          //     vertical: 60.h,
          //   ),
          //   child: IconButton(
          //     onPressed: () =>
          //         Navigator.pushReplacementNamed(context, '/single_categories_screen'),
          //     icon: Icon(
          //       Icons.arrow_back_ios,
          //       size: 24.h,
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                // 'Book Name',
                widget.bookModel.bookName,
                style: TextStyle(
                  fontSize: 33.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 70.h,
              ),
              Container(
                color: Colors.white,
                width: 316.w,
                height: 5.h,
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 20.h,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.volume_down_outlined,
                      color: Colors.white,
                      size: 36.h,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.volume_up_outlined,
                      color: Colors.white,
                      size: 36.h,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Container(
                    width: 375.w,
                    height: 268.h,
                    color: Colors.white,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 25.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '03:36',
                              style: TextStyle(
                                fontSize: 11.sp,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '10:00',
                              style: TextStyle(
                                fontSize: 11.sp,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.skip_previous,
                              size: 36.h,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.play_arrow,
                              size: 36.h,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.skip_next,
                              size: 36.h,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 20.h,
                        ),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.aboutBook+' :',
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                widget.bookModel.description,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
