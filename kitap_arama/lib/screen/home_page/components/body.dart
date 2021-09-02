import 'package:flutter/material.dart';
import 'package:kitap_arama/constants.dart';
import 'package:kitap_arama/screen/home_page/components/search_bar.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            SearchBar(widtH: size.width),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: size.height * 0.3,
                color: Colors.grey.withOpacity(0.5),
                child: Center(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
