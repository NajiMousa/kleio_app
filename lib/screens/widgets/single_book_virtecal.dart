import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kleio_app/database/models/book_model.dart';

class SingleBookVirtecal extends StatelessWidget {
   SingleBookVirtecal({
    Key? key,
    // required this.titleImage,
    // required this.bookName,
    // required this.autherName,
    // required this.rateBook,
     required this.bookModel,
  }) : super(key: key);

  // String titleImage;
  // String bookName;
  // String autherName;
  // String rateBook;
  BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset(
            // 'images/imageBB.png',
            bookModel.imageUrl,
            height: 40.h,
            width: 45.w,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.w,
            ),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text(
                  // bookName,
                  bookModel.bookName,
                  style: TextStyle(
                    fontSize: 17.sp,
                  ),
                ),
                Text(
                  // autherName,
                  bookModel.autherName,
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),

                SizedBox(
                  height: 4.h,
                ),
                // Container(
                //   child: Text(rateBook),
                //   alignment: AlignmentDirectional.bottomStart,
                // ),
              ],
            ),
          ),
          SizedBox(
            width: 100.w,
          ),
          Icon(
            Icons.play_arrow,
            size: 45.h,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
