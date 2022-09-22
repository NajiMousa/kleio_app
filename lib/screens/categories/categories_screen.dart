import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kleio_app/database/models/categories_model.dart';
import 'package:kleio_app/screens/widgets/add_categories_field.dart';

class CategoriesScreen extends StatefulWidget {
  CategoriesScreen({Key? key }) : super(key: key);


  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
        // backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Categories',
          // style: TextStyle(color: Colors.black),
        ),
        // centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.zero,
        child: ListView(
          // padding: EdgeInsets.only(top: 70.h),
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/single_categories_screen' );
              },
              child: AddCategoriesField(
                imageUrl: 'images/SliderPart.png',
                titleCategories: 'Classic',
              ),
            ),
            AddCategoriesField(
              imageUrl: 'images/Category02.png',
              titleCategories: '',
            ),
            AddCategoriesField(
              imageUrl: 'images/Category03.png',
              titleCategories: '',
            ),
            AddCategoriesField(
              imageUrl: 'images/Category04.png',
              titleCategories: '',
            ),
            AddCategoriesField(
              imageUrl: 'images/Category05.png',
              titleCategories: '',
            ),
            AddCategoriesField(
              imageUrl: 'images/Category06.png',
              titleCategories: '',
            ),
          ],
        ),
      ),
    );
  }
}
