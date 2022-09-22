import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:kleio_app/database/get/book_model_getx_controller.dart';
import 'package:kleio_app/database/models/book_model.dart';
import 'package:kleio_app/database/models/categories_model.dart';
import 'package:kleio_app/screens/book/book_details_screen.dart';
import 'package:kleio_app/screens/book/play_book_screen.dart';

class SingleCategoriesScreen extends StatefulWidget {
  SingleCategoriesScreen({Key? key ,required this.categoriesModel}) : super(key: key);

  CategoriesModel categoriesModel;

  @override
  _SingleCategoriesScreenState createState() => _SingleCategoriesScreenState();
}

class _SingleCategoriesScreenState extends State<SingleCategoriesScreen> {

  List<BookModel> selected = [];
  List<BookModel> selectedCat = [];
  // late BookModel bookModel;
  String text = '';

  void initState() {
    selected = BookModelGetxController.to.BooksModel.value;
    setState(() {
      text = widget.categoriesModel.categorieName;
      selectedCat.clear();
      selectedCat.addAll(selected.where((element) => element.tages.contains(text)));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // backgroundColor: Colors.white,
        elevation: 0,
        title:  Text(
          // 'Classic',
          widget.categoriesModel.categorieName,
          style: const TextStyle(color: Colors.white),
        ),
        // centerTitle: true,
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 10.h,
          minWidth: double.infinity,
        ),
        child:
        // Obx(
        //   () {
        //     return
        Container(
              padding: EdgeInsets.only(top: 50.h,),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w ,),
                child: GridView.builder(
                  itemCount: selectedCat.length,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20.w,
                    mainAxisSpacing: 20.h,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        BookModel pass = selectedCat[index];
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookDetailsScreen( bookModel: pass,),
                          ),
                        );
                      },
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
                              selectedCat[index].imageUrl,
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
                                    BookModel pass = selectedCat[index];
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
                    );
                    // return BookPlay(
                    //   bookModel: BookModelGetxController.to.BooksModel.first,
                    //   bookCaver: controller.BooksModel[index].imageUrl,
                    //   heightBookPlay: 236,
                    //   widthBookPlay: 158,
                    // );
                  },
                ),
              ),
            ),
        //   },
        // ),
      ),
    );
  }
}
