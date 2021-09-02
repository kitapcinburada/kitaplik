import 'package:flutter/material.dart';
import 'package:kitaplik/screens/about_page/about_page.dart';
import 'package:kitaplik/screens/library_page/library_page.dart';
import 'package:kitaplik/screens/shelf_page/shelf_page.dart';

final Map<String, WidgetBuilder> routes = {
  AboutPage.routeName: (context) => AboutPage(),
  ShelfPage.routeName: (context) => ShelfPage(),
  LibraryPage.routeName: (context) => LibraryPage(),
};
