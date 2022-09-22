import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kleio_app/database/get/book_model_getx_controller.dart';
import 'package:kleio_app/database/models/book_model.dart';
import 'package:kleio_app/screens/book/play_book_screen.dart';
import 'package:kleio_app/screens/widgets/elveated_button_app.dart';
import 'package:kleio_app/screens/widgets/section_book_home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BookDetailsScreen extends StatefulWidget {
  BookDetailsScreen({Key? key , required this.bookModel}) : super(key: key);
  BookModel bookModel;

  @override
  _BookDetailsScreenState createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
        return Column(
          children: [
            Image.asset(
              // 'images/bookCaver.png',
              widget.bookModel.imageUrl,
              fit: BoxFit.fill,
              width: double.infinity,
              height: 575.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 28.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         SizedBox(
                  //           height: 5.h,
                  //         ),
                  //         Row(
                  //           children: [
                  //             Container(
                  //               color: Colors.blue,
                  //               width: 15.w,
                  //               height: 15.h,
                  //             ),
                  //             SizedBox(
                  //               width: 4.h,
                  //             ),
                  //             Container(
                  //               color: Colors.blue,
                  //               width: 15.w,
                  //               height: 15.h,
                  //             ),
                  //             SizedBox(
                  //               width: 4.h,
                  //             ),
                  //             Container(
                  //               color: Colors.blue,
                  //               width: 15.w,
                  //               height: 15.h,
                  //             ),
                  //             SizedBox(
                  //               width: 4.h,
                  //             ),
                  //             Container(
                  //               color: Colors.blue,
                  //               width: 15.w,
                  //               height: 15.h,
                  //             ),
                  //             SizedBox(
                  //               width: 4.h,
                  //             ),
                  //             Container(
                  //               color: Colors.blue,
                  //               width: 15.w,
                  //               height: 15.h,
                  //             ),
                  //           ],
                  //         ),
                  //         SizedBox(
                  //           height: 4.h,
                  //         ),
                  //         Text(
                  //           '4.1',
                  //           style: TextStyle(
                  //             fontSize: 11.sp,
                  //             color: Colors.black,
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 200.w,
                            child: Text(
                              // 'BookName',
                              widget.bookModel.bookName,
                              style: TextStyle(
                                  fontSize: 33.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          Row(
                            children: [
                              Text(
                                AppLocalizations.of(context)!.bookLength+' : ',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(width: 20.w,),
                              Text(
                                // '4 h 20 min',
                                widget.bookModel.longTime,
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // ElveatedButtonApp(
                      //   textButton: 'Start Listening',
                      //   routeGo: '/play_book_screen',
                      //   height: 60,
                      //   width: 120,
                      // ),
                      ElevatedButton(
                        onPressed: () {
                          // BookModel pass = selected[index];
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PlayBookScreen(bookModel: widget.bookModel,),
                            ),
                          );
                        },
                        child: Text(
                          'Start Listening',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          minimumSize: Size(
                            120.w,
                            60.h,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    children: [
                      Text(
                        AppLocalizations.of(context)!.autherBook+' :',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 20.w,),
                      Text(
                        // 'Auther : Sally Rooney',
                        widget.bookModel.autherName,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    AppLocalizations.of(context)!.aboutBook+' :',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    widget.bookModel.description,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    children: [
                      Text(
                        AppLocalizations.of(context)!.categoriesBook+' :',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 20.w,),
                      Text(
                        // 'Tags History, Fantasy',
                        widget.bookModel.tages,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    children: [
                      Text(
                        AppLocalizations.of(context)!.languageBook+' :',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 20.w,),
                      Text(
                        // 'Language: English',
                        widget.bookModel.languageBook,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    children: [
                      Text(
                        AppLocalizations.of(context)!.pBD+' :',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 20.w,),
                      Text(
                        '15/06/2019',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ],
        );
      },

      ),
    );
  }
}
