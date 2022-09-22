import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kleio_app/database/get/book_model_getx_controller.dart';
import 'package:kleio_app/database/models/book_model.dart';
import 'package:kleio_app/screens/book/book_show_screen.dart';

class BookPlay extends StatelessWidget {
  BookPlay({
    Key? key,
    required this.bookCaver,
    required this.heightBookPlay,
    required this.widthBookPlay,
    required BookModel bookModel,
    this.Bool = false
  }) : super(key: key);

  //

  int widthBookPlay;
  int heightBookPlay;
  String bookCaver;
  late BookModel bookModel ;
  bool Bool;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthBookPlay.w,
      height: heightBookPlay.h,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookShowScreen(
                    bookModel: bookModel,
                  ),
                ),
              );
            },
            child: Image.asset(
              bookCaver,
              fit: BoxFit.fill,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
            child: Container(
              alignment: AlignmentDirectional.bottomEnd,
              child: IconButton(
                onPressed: () =>
                    Navigator.pushNamed(context, '/play_book_screen'),
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 30.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
