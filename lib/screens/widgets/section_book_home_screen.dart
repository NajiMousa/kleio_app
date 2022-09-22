import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:kleio_app/database/get/book_model_getx_controller.dart';
import 'package:kleio_app/database/models/book_model.dart';
import 'package:kleio_app/screens/book/book_details_screen.dart';
import 'package:kleio_app/screens/book/book_show_screen.dart';
import 'package:kleio_app/screens/book/play_book_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SectionBookHomeScreen extends StatelessWidget {
  SectionBookHomeScreen(
      {Key? key,
      required this.titleSection,
      // required this.bookModel,
      this.showMore = false,
      required this.selected})
      : super(key: key);

  String titleSection;
  bool showMore;
  List<BookModel> selected = [];


  @override
  void initState() {
    // selected = BookModelGetxController.to.BooksModel.value;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                titleSection,
                style: TextStyle(fontSize: 17.sp),
              ),
              InkWell(
                onTap: () {
                },
                child: Text(
                  AppLocalizations.of(context)!.seeMore,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 10.h,
            maxHeight: 196.h,
            minWidth: double.infinity,
          ),
          child:GridView.builder(
              itemCount: selected.length,
              // itemCount: 7,
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 10.sp,
                childAspectRatio: 196 / 138.sp,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    BookModel pass = selected[index];
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookShowScreen( bookModel: pass,),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.w),
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 20.w,

                      ),
                      child:
                      // BookPlay(
                      //   bookModel: BookModelGetxController.to.BooksModel.value[index],
                      //   widthBookPlay: 20,
                      //   heightBookPlay: 20,
                      //   bookCaver: BookModelGetxController.to.BooksModel[index].imageUrl,
                      // ),
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          //       InkWell(
                          //       onTap: () {
                          // BookModel pass = selected[index];
                          // Navigator.push(
                          // context,
                          // MaterialPageRoute(
                          // builder: (context) =>
                          // BookShowScreen(
                          // bookModel: pass,
                          // ),
                          // ),
                          // );
                          // },
                          Image.asset(
                            // bookModel.imageUrl,
                            // 'images/Image.png',
                            selected[index].imageUrl,
                            fit: BoxFit.fill,
                            width: double.infinity,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.sp, vertical: 10.sp),
                            child: Container(
                              alignment: AlignmentDirectional.bottomEnd,
                              child: IconButton(
                                onPressed: () {
                                  BookModel pass = selected[index];
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PlayBookScreen(bookModel: pass,),
                                    ),
                                  );
                                },
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
                    ),
                  ),
                );
              }),
          // Obx(
          //   () {
          //     return
          //   },
          // ),
        ),
      ],
    );
  }
}
