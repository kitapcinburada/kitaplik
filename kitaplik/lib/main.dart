import 'package:flutter/material.dart';
import 'package:kitaplik/constants.dart';
import 'package:kitaplik/routes.dart';
import 'package:kitaplik/screens/library_page/library_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: kPrimaryColor,
        accentColor: kAccentColor,
        dividerColor: kDividerColor,
      ),
      title: 'Kitapçı Burada',
      debugShowCheckedModeBanner: false,
      initialRoute: LibraryPage.routeName,
      routes: routes,
    );
  }
}
