import 'package:flutter/material.dart';
import 'package:kitaplik/constants.dart';
import 'package:kitaplik/screens/about_page/components/body.dart';

class AboutPage extends StatelessWidget {
  static String routeName = '/AboutPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kitap Bilgileri",
          style: TextStyle(fontSize: kAppBarSize),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
