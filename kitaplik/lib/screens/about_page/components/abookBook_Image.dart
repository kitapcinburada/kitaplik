import 'package:flutter/material.dart';


class AboutBook_Image extends StatelessWidget {
  const AboutBook_Image({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.4,
      height: size.height * 0.5,
      child: Stack(
        children: [
          Image.asset(
            "assets/ates_tahti.jpg",
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
