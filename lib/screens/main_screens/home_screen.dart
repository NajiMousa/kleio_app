import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:kleio_app/database/get/book_model_getx_controller.dart';
import 'package:kleio_app/database/get/categories_model_getx_controller.dart';
import 'package:kleio_app/database/get/slider_model_getx_controller.dart';
import 'package:kleio_app/database/models/book_model.dart';
import 'package:kleio_app/database/models/categories_model.dart';
import 'package:kleio_app/database/models/listmodek.dart';
import 'package:kleio_app/pref/shread_pref.dart';
import 'package:kleio_app/screens/widgets/elveated_button_app.dart';
import 'package:kleio_app/screens/widgets/mydrawer.dart';
import 'package:kleio_app/screens/widgets/section_book_cat_home_screen.dart';
import 'package:kleio_app/screens/widgets/section_book_home_screen.dart';
import 'package:kleio_app/screens/widgets/text_field_app.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<BookModel> selected = [];
  List<CategoriesModel> catSelected = [];
  List<BookModel> bookShowAction = [];
  List<BookModel> bookShowDrama = [];
  List<BookModel> bookShowClassics = [];
  List<BookModel> bookShowHumor = [];
  List<BookModel> bookShowPoetry = [];
  List<BookModel> bookShowWorld = [];
  List<Modle> catWithBook = [];
  int heightMax = 200;
  int counter = 1;
  late String text;
  int num = 0;


  void initState() {
    selected = BookModelGetxController.to.BooksModel.value;
    catSelected = CategoriesGetxController.to.CategorieModel.value;
    Ret();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.home),
        // backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/search_screen'),
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 52.w, vertical: 15.h),
            child: InkWell(
              onTap: () =>
                  Navigator.pushNamed(context, '/sbuscribe_intro_screen'),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 9.w,
                  ),
                  Text(
                    AppLocalizations.of(context)!.tryPremium,
                    style: TextStyle(fontSize: 12.sp),
                  ),
                ],
              ),
            ),
          ),
          !CategoriesGetxController.to.loading.value
              ? SectionBookCatHomeScreen(
            catName: AppLocalizations.of(context)!.classification,
            catSelected: catSelected,
          )
              : Center(
            child: Text(AppLocalizations.of(context)!.noData),
          ),
          !BookModelGetxController.to.loading.value
              ? SectionBookHomeScreen(
            selected: selected,
            titleSection: AppLocalizations.of(context)!.newBook,
          )
              : Center(
            child: Text(AppLocalizations.of(context)!.noData),
          ),
          SizedBox(
            height: 30.h,
          ),

          /// Slider
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 0.h,
              maxHeight: 125.h,
              minWidth: double.infinity,
            ),
            child: Obx(() {
              return GridView.builder(
                itemCount: SliderModelGetxController.to.Slider.length,
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  // mainAxisSpacing: 0.sp,
                  childAspectRatio: 100 / 375.sp,
                ),
                itemBuilder: (context, index) {
                  return Stack(
                    // alignment: AlignmentDirectional.bottomStart,
                    children: [
                      Image.asset(
                        SliderModelGetxController.to.Slider[index].imageUrl,
                        fit: BoxFit.fill,
                        width: double.infinity,
                      ),
                    ],
                  );
                },
              );
            }),
          ),
          SizedBox(height: 30.h,),
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 0.h,
              maxHeight: heightMax.h,
              // minWidth: double.infinity,
            ),
            child: ListView.builder(
              itemCount: counter,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                print(index.toString() +"ahmed");
                return !BookModelGetxController.to.loading.value
                    ? SectionBookHomeScreen(
                  selected: catWithBook[index].list,
                  titleSection: catWithBook[index].title,
                )
                    : Center(
                  child: Text(AppLocalizations.of(context)!.noData),
                );
              },
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 20.h,
            ),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  print(num);
                  num++;
                  print(num);
                  // Ret();

                  if (counter < 5) {
                    if (CategoriesGetxController.to.CategorieModel.length >
                        counter) {
                      int a = heightMax + 215;
                      int b = counter + 1;
                      if (CategoriesGetxController.to.CategorieModel.length >=
                          counter) {
                        heightMax = a;
                        counter = b;
                      }
                    }
                  }
                });
              },
              child: Text(
                AppLocalizations.of(context)!.loadMore,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                minimumSize: Size(
                  100.w,
                  60.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void Ret() {
    for(int i = 0 ; i < catSelected.length ; i++ ){
    String a = catSelected[i].categorieName;
    print("ahmed "+a);
      if(a=='Drama'){
        bookShowDrama.clear();
      bookShowDrama.addAll(
          selected.where((element) => element.tages.contains(a)));
      catWithBook.add(Modle(list: bookShowDrama,title: "Drama"));
      print('D');
      }
      else if(a=='Action'){
        bookShowAction.clear();
        bookShowAction.addAll(
            selected.where((element) => element.tages.contains(a)));
        catWithBook.add(Modle(list: bookShowAction,title: "Action"));
        print('A');
      }
      else if(a=='Classics'){
        bookShowClassics.clear();
        bookShowClassics.addAll(
            selected.where((element) => element.tages.contains(a)));
        catWithBook.add(Modle(list: bookShowClassics,title: "Classics"));
        print('C');
      }
      else if(a=='Humor'){
        bookShowHumor.clear();
        bookShowHumor.addAll(
            selected.where((element) => element.tages.contains(a)));
        catWithBook.add(Modle(list: bookShowHumor,title: "Humor"));
        print('H');
      }
      else if(a=='Poetry'){
        bookShowPoetry.clear();
        bookShowPoetry.addAll(
            selected.where((element) => element.tages.contains(a)));
        catWithBook.add(Modle(list:bookShowPoetry ,title: "Poetry"));
        print('P');
      }
      else if(a=='World Literature'){
        bookShowWorld.clear();
        bookShowWorld.addAll(
            selected.where((element) => element.tages.contains(a)));
        catWithBook.add(Modle(list: bookShowWorld,title: "World Literature"));
        print('W');
      }

      // switch (a) {
      //   // case 'Drama' :
      //   //   bookShowDrama.clear();
      //   //   bookShowDrama.addAll(
      //   //       selected.where((element) => element.tages.contains(a)));
      //   //   catWithBook.add(Modle(list: bookShowDrama,title: a));
      //   //   print('D');
      //   //   text = a;
      //   //   // return bookShowDrama;
      //   //   break;
      //   // case 'Action' :
      //   //   bookShowAction.clear();
      //   //   bookShowAction.addAll(
      //   //       selected.where((element) => element.tages.contains(a)));
      //   //   catWithBook.add(Modle(list: bookShowAction,title: a));
      //   //   print('A');
      //   //   text = a;
      //   //   // return bookShowAction;
      //   //   break;
      //   // case 'Classics' :
      //   //   bookShowClassics.clear();
      //   //   bookShowClassics.addAll(
      //   //       selected.where((element) => element.tages.contains(a)));
      //   //   catWithBook.add(Modle(list: bookShowClassics,title: a));
      //   //   print('C');
      //   //   text = a;
      //   //   // return bookShowClassics;
      //   //   break;
      //   // case 'Humor' :
      //   //   bookShowHumor.clear();
      //   //   bookShowHumor.addAll(
      //   //       selected.where((element) => element.tages.contains(a)));
      //   //   catWithBook.add(Modle(list: bookShowHumor,title: a));
      //   //   print('H');
      //   //   text = a;
      //   //   // return bookShowHumor;
      //   //   break;
      //   // case 'Poetry' :
      //   //   bookShowPoetry.clear();
      //   //   bookShowPoetry.addAll(
      //   //       selected.where((element) => element.tages.contains(a)));
      //   //   catWithBook.add(Modle(list:bookShowPoetry ,title: a));
      //   //   print('P');
      //   //   text = a;
      //   //   // return bookShowPoetry;
      //   //   break;
      //   case 'World Literature' :
      //     bookShowWorld.clear();
      //     bookShowWorld.addAll(
      //         selected.where((element) => element.tages.contains(a)));
      //     catWithBook.add(Modle(list: bookShowWorld,title: a));
      //     print('W');
      //     text = a;
      //     // return bookShowWorld;
      //     break;
      // }
    // }
    }
  }

  // List get aaa {
  //   return catWithBook[num];
  // }


}

