import 'package:flutter/material.dart';
import 'package:kitap_arama/routes.dart';
import 'package:kitap_arama/screen/home_page/home_page_screen.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.white,
        ),
        initialRoute: HomePageScreen.routeName,
        routes: routes,
      ),
    );
