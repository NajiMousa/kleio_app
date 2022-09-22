import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:kleio_app/database/get/categories_model_getx_controller.dart';
import 'package:kleio_app/database/models/categories_model.dart';
import 'package:kleio_app/screens/categories/single_categories_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SectionBookCatHomeScreen extends StatelessWidget {
  SectionBookCatHomeScreen({Key? key ,required this.catSelected,required this.catName}) : super(key: key );

  String catName ;
  List<CategoriesModel> catSelected = [];

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
                // 'Classification',
                catName,
                style: TextStyle(fontSize: 17.sp),
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, '/categories_screen'),
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
            maxHeight: 320.h,
            minWidth: double.infinity,
          ),
          child: Obx(
            () {
              return GridView.builder(
                itemCount: CategoriesGetxController.to.CategorieModel.length,
                // itemCount: 2,
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 20.sp,
                  childAspectRatio: 320 / 220.sp,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      CategoriesModel pass = catSelected[index];
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SingleCategoriesScreen(categoriesModel: pass,),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: Container(
                      //  decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(25),
                      // // color: Colors.white,
                      // boxShadow: [
                      //   BoxShadow(color: Colors.green, spreadRadius: 3),
                      // ],
                    // ),
                        // padding: EdgeInsets.symmetric(  vertical: 20),
                        padding: EdgeInsets.only(
                          left: 20.w,
                        ),
                        child: InkWell(
                          // onTap: () => Navigator.pushNamed(context, '/single_categories_screen'),
                          child: Stack(
                            // alignment: AlignmentDirectional.bottomStart,
                            children: [
                              Image.asset(
                                // CategoriesGetxController.to.CategorieModel[index].imageCategories,
                                // 'images/Image.png',
                                CategoriesGetxController.to.CategorieModel[index].imageCategories,
                                fit: BoxFit.fill,
                                width: double.infinity,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.sp, vertical: 22.sp),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      catSelected[index].categorieName,
                                      style: TextStyle(
                                          fontSize: 24.sp, color: Colors.white),
                                    ),
                                    Text(
                                      catSelected[index].numberBook,
                                      style: TextStyle(
                                          fontSize: 15.sp, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
