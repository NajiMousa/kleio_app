import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kleio_app/database/get/book_model_getx_controller.dart';
import 'package:kleio_app/database/models/book_model.dart';
import 'package:kleio_app/screens/book/book_details_screen.dart';
import 'package:kleio_app/screens/widgets/single_book_virtecal.dart';
import 'package:kleio_app/screens/widgets/text_field_app.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  late TextEditingController _textEditingController;
  List<BookModel> basedList = [];
  List<BookModel> searchedList = [];
  String text ='';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEditingController = TextEditingController();
    basedList = BookModelGetxController.to.BooksModel.value;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _textEditingController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.search),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(
              //   padding: EdgeInsets.only(
              //     top: 50.h,
              //   ),
              //   // alignment: AlignmentDirectional.topStart,
              //   child: Row(
              //     children: [
              //       IconButton(
              //         onPressed: () {
              //           Navigator.pop(context);
              //         },
              //         icon: const Icon(
              //           Icons.arrow_back_ios,
              //           color: Colors.black,
              //         ),
              //       ),
              //       Text(
              //         AppLocalizations.of(context)!.search,
              //         style: TextStyle(
              //             color: Colors.black,
              //             fontSize: 24.sp,
              //             fontWeight: FontWeight.bold),
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(height: 25.h,),
              // TextFieldApp(
              //   keyboardType: TextInputType.emailAddress,
              //   hint: 'Write here',
              //   addSuffixIcon: true,
              //   backgroundColorText: true,
              // ),
              TextField(
                // style: TextStyle(fontSize: 14.sp),
                // keyboardType: ,
                controller: _textEditingController,
                onChanged: (value) {
                  setState(() {
                    text = _textEditingController.text;
                    searchedList.clear();
                    searchedList.addAll(basedList.where((element) => element.bookName.contains(text)));
                  });
                },
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.writeHere,
                  enabledBorder: InputBorder.none,
                  // contentPadding: EdgeInsets.symmetric(horizontal: 20.h),
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Icon(Icons.search, size: 24,),
                  constraints: BoxConstraints(
                    minHeight: 50.h,
                    minWidth: double.infinity,
                  ),
                  // border: InputBorder(borderSide: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(height: 600.h, child: ListView.builder(
                itemCount: searchedList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      BookModel pass = searchedList[index];
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              BookDetailsScreen(bookModel: pass,),
                        ),
                      );
                    },
                    child: SingleBookVirtecal(bookModel: searchedList[index],),
                  );
                },),),
            ],
          ),
        ),
      ),
    );
  }
}
