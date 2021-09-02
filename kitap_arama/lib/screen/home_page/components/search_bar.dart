import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
    @required this.widtH,
  }) : super(key: key);

  final double widtH;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              width: widtH * 0.6,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.4),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                style: TextStyle(fontSize: 20),
                onChanged: (value) => print(value),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 9,
                  ),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "Hangi kitaba bakmıştınız?",
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          Expanded(flex: 1, child: Icon(Icons.mic, size: 30)),
          Expanded(flex: 1, child: Icon(Icons.qr_code_scanner, size: 30))
        ],
      ),
    );
  }
}