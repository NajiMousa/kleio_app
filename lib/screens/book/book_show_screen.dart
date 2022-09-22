import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:kleio_app/database/get/book_model_getx_controller.dart';
import 'package:kleio_app/database/models/book_model.dart';
import 'package:kleio_app/screens/widgets/elveated_button_app.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'book_details_screen.dart';

class BookShowScreen extends StatefulWidget {
  BookShowScreen({Key? key, required this.bookModel}) : super(key: key);

  BookModel bookModel;

  @override
  _BookShowScreenState createState() => _BookShowScreenState();
}

class _BookShowScreenState extends State<BookShowScreen> {
  BookModelGetxController controller = Get.find();
  late BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Stack(
        children: [
          Image.asset(
            // 'images/bookCaver.png',
            widget.bookModel.imageUrl,
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
            // height: double.infinity,
          ),

          // Container(
          //   padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 60.h),
          //   child: IconButton(
          //     onPressed: () {Navigator.pushReplacementNamed(context, '/single_categories_screen');},
          //     icon: const Icon(
          //       Icons.arrow_back_ios,
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
          Container(
            alignment: AlignmentDirectional.topStart,
            padding: EdgeInsets.only(left: 20.w, top: 50.h),
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // 'BookName',
                  widget.bookModel.bookName,
                  style: TextStyle(
                      fontSize: 33.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  padding: EdgeInsets.zero,
                  alignment: AlignmentDirectional.topStart,
                  color: Colors.white,
                  width: 78.w,
                  height: 24.h,
                  child: Center(
                    child: Text(
                      widget.bookModel.longTime,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              color: Colors.white,
                              width: 15.w,
                              height: 15.h,
                            ),
                            SizedBox(
                              width: 4.h,
                            ),
                            Container(
                              color: Colors.white,
                              width: 15.w,
                              height: 15.h,
                            ),
                            SizedBox(
                              width: 4.h,
                            ),
                            Container(
                              color: Colors.white,
                              width: 15.w,
                              height: 15.h,
                            ),
                            SizedBox(
                              width: 4.h,
                            ),
                            Container(
                              color: Colors.white,
                              width: 15.w,
                              height: 15.h,
                            ),
                            SizedBox(
                              width: 4.h,
                            ),
                            Container(
                              color: Colors.white,
                              width: 15.w,
                              height: 15.h,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          '4.1',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 10.sp,
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            widget.bookModel.favorite == 1 ? widget.bookModel.favorite = 0 : widget.bookModel.favorite = 1;
                            print(widget.bookModel.favorite);
                            BookModelGetxController.to.updateBookMode(widget.bookModel);
                          });
                        },
                        icon: Icon(
                          Icons.favorite,
                          color:  widget.bookModel.favorite == 0 ? Colors.white : Colors.red,
                          size: 36.h,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                // ElveatedButtonApp(
                //   textButton: 'Details',
                //   routeGo: '/book_details_screen',
                //   height: 60,
                //   width: 335,
                // ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookDetailsScreen(
                          bookModel: widget.bookModel,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'Details',
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize: Size(
                      335.w,
                      60.h,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
