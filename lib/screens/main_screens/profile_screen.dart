import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kleio_app/database/get/book_model_getx_controller.dart';
import 'package:kleio_app/database/models/book_model.dart';
import 'package:kleio_app/screens/book/book_show_screen.dart';
import 'package:kleio_app/screens/book/play_book_screen.dart';
import 'package:kleio_app/screens/widgets/single_book_virtecal.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<BookModel> allBook = [];
  List<BookModel> favoriteBook = [];

  @override
  void initState() {
    allBook = BookModelGetxController.to.BooksModel.value;
    // TODO: implement initState
    favoriteBook.clear();
    for (int i = 0; i < allBook.length; i++) {
      if (allBook[i].favorite == 1) {
        favoriteBook.add(allBook[i]);
      }
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          AppLocalizations.of(context)!.profile,
          style: TextStyle(
            // color: Colors.black,
            fontSize: 17.sp,
          ),
        ),
        // centerTitle: true,
        // leading: const Icon(
        //   Icons.arrow_back_ios,
        //   color: Colors.black,
        // ),
        // actions: const [
        //   Icon(
        //     Icons.menu,
        //     color: Colors.black,
        //   ),
        // ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 75.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Image.asset('images/Mask.png'),
                  radius: 55.sp,
                ),
                SizedBox(
                  width: 50.w,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/setting_screen');
                  },
                  icon: Icon(
                    Icons.settings,
                    size: 36.h,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Column(
              children: [
                Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 33.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  'Photographer',
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 34.h,
            ),
            Container(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                AppLocalizations.of(context)!.myBook,
                style: TextStyle(
                  fontSize: 22.sp,
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Expanded(

              child: ListView.builder(
                shrinkWrap: true,
                itemCount: favoriteBook.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      print(favoriteBook);
                      BookModel pass = favoriteBook[index];
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookShowScreen(
                            bookModel: pass,
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Container(
                        height:100.h ,
                        child: Row(
                          children: [
                            Container(clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.w)),
                              child: Image.asset(
                                // bookModel.imageUrl,
                                // 'images/Image.png',
                                favoriteBook[index].imageUrl,
                                fit: BoxFit.fill,
                                width: 90.w,
                                height: 120.h,
                              ),
                            ),
                            SizedBox(
                              width: 30.w,
                            ),
                            Expanded(
                              child: ListTile(
                                title: Text(
                                  // 'BookName',
                                  favoriteBook[index].bookName,
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                subtitle: Text(
                                  favoriteBook[index].autherName,
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                trailing: IconButton(
                                  onPressed: () {
                                    BookModel pass = favoriteBook[index];
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PlayBookScreen(
                                          bookModel: pass,
                                        ),
                                      ),
                                    );
                                  },
                                  icon: Icon(
                                    Icons.play_arrow,
                                    color: Colors.blue,
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
                },
              ),
            ),

            // SingleBookVirtecal(
            //   titleImage: 'images/imageBB.png',
            //   bookName: 'Book  Name',
            //   autherName: 'Auter Name',
            //   rateBook: '5',
            // ),
          ],
        ),
      ),
    );
  }
}
