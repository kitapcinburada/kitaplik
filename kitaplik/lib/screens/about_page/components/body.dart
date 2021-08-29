import 'package:flutter/material.dart';
import 'package:kitaplik/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding / 2),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  aboutBook_Image(size: size),
                  aboutBook_Info(size: size),
                ],
              ),
              Row(
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class aboutBook_Info extends StatelessWidget {
  const aboutBook_Info({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width * 0.5,
            child: Text(
              "Ateş Tahtı / Kane Günceleri 2",
              style: TextStyle(
                fontSize: kBookSize,
              ),
            ),
          ),
          SizedBox(height: kSizedBox),
          Container(
            width: size.width * 0.5,
            child: Text(
              "Rick Riordan",
              style: TextStyle(
                fontSize: kAuthorSize,
              ),
            ),
          ),
          SizedBox(height: kSizedBox),
          Container(
            width: size.width * 0.5,
            child: Text(
              "Doğan Egmont Çocuk Kitapları",
              style: TextStyle(
                fontSize: kAuthorSize,
              ),
            ),
          ),
          SizedBox(height: kSizedBox * 4),
          BookLanguage(),
          SizedBox(height: kSizedBox),
          BookPage(),
          SizedBox(height: kSizedBox),
          BookReleaseYear(),
        ],
      ),
    );
  }

  Row BookReleaseYear() {
    return Row(
      children: [
        Text(
          "Yayın Yılı",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: kBookSize,
          ),
        ),
        SizedBox(
          width: size.width * 0.05,
        ),
        Text(
          "2012",
          style: TextStyle(
            fontSize: kBookSize,
          ),
        ),
      ],
    );
  }

  Row BookPage() {
    return Row(
      children: [
        Text(
          "Sayfa Sayısı",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: kBookSize,
          ),
        ),
        SizedBox(
          width: size.width * 0.05,
        ),
        Text(
          "511",
          style: TextStyle(
            fontSize: kBookSize,
          ),
        ),
      ],
    );
  }

  Row BookLanguage() {
    return Row(
      children: [
        Text(
          "Kitap Dili",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: kBookSize,
          ),
        ),
        SizedBox(
          width: size.width * 0.05,
        ),
        Text(
          "Türkçe",
          style: TextStyle(
            fontSize: kBookSize,
          ),
        ),
      ],
    );
  }
}

class aboutBook_Image extends StatelessWidget {
  const aboutBook_Image({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.4,
      height: size.height * 0.5,
      color: Colors.blueAccent,
    );
  }
}
