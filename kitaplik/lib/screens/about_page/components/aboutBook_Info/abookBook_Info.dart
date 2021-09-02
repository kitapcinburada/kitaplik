import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kitaplik/constants.dart';

class AboutBook_Info extends StatelessWidget {
  const AboutBook_Info({
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
          SizedBox(height: kSizedBox),
          BookRatingBar(),
          SizedBox(height: kSizedBox),
          BookLanguage(size: size),
          SizedBox(height: kSizedBox),
          BookPage(size: size),
          SizedBox(height: kSizedBox),
          BookReleaseYear(size: size),
        ],
      ),
    );
  }
}

class BookLanguage extends StatelessWidget {
  const BookLanguage({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
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

class BookPage extends StatelessWidget {
  const BookPage({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
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
}

class BookReleaseYear extends StatelessWidget {
  const BookReleaseYear({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
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
}

class BookRatingBar extends StatelessWidget {
  const BookRatingBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 3,
      itemCount: 5,
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return Icon(
              Icons.sentiment_very_dissatisfied,
              color: Colors.red,
            );
          case 1:
            return Icon(
              Icons.sentiment_dissatisfied,
              color: Colors.redAccent,
            );
          case 2:
            return Icon(
              Icons.sentiment_neutral,
              color: Colors.amber,
            );
          case 3:
            return Icon(
              Icons.sentiment_satisfied,
              color: Colors.lightGreen,
            );
          case 4:
            return Icon(
              Icons.sentiment_very_satisfied,
              color: Colors.green,
            );
          default:
            return null;
        }
      },
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
