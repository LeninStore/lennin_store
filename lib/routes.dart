import 'package:flutter/material.dart';
import 'package:lennin_app/pages/about_us.dart';
import 'package:lennin_app/pages/all_products.dart';
import 'package:lennin_app/pages/home.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    'home': (BuildContext context) => const MyHomePage(),
    'allProducts': (BuildContext context) => const AllProducts(),
    'aboutUs': (BuildContext context) => const AboutUs(),
  };
}
