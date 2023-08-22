import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'insta/view/home_screen.dart';
import 'insta/view/search_screen.dart';

void main()
{
  runApp(
    Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => HomeScreen(),
          '/search':(p0) => SearchScreen(),
        },
      );
    },)
  );
}