import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:kitaplik/constants.dart';
import 'package:kitaplik/screens/about_page/about_page.dart';

class ShelfPage extends StatelessWidget {
  static String routeName = '/ShelfPage';
  final String title;

  const ShelfPage({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final Map titleShelf = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(
            "Raf " + titleShelf['raf'],
            style: TextStyle(fontSize: kAppBarSize),
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 5,
          itemBuilder: (context, index) => buildCard(index, context),
        ),
      ),
    );
  }

  Padding buildCard(int index, BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      child: Slidable(
        direction: Axis.horizontal,
        actionPane: SlidableScrollActionPane(),
        actionExtentRatio: 0.25,
        secondaryActions: [
          IconSlideAction(
            caption: 'More',
            color: kDividerColor,
            icon: Icons.more_horiz_outlined,
            onTap: () {
              Navigator.pushNamed(context, AboutPage.routeName);
            },
          ),
          IconSlideAction(
            caption: 'Delete',
            color: kButtonDelete,
            icon: Icons.delete,
            onTap: () => {},
          ),
        ],
        child: Card(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: size.width * 0.24,
                    height: size.height * 0.18,
                    color: Colors.black,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          padding: EdgeInsets.only(left: kDefaultPadding),
                          scrollDirection: Axis.horizontal,
                          child: Text(
                            "Avucunuzdaki Kelebek",
                            style: TextStyle(
                              fontSize: kBookSize,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryText,
                            ),
                          ),
                        ),
                        SizedBox(height: kSizedBox / 2),
                        SingleChildScrollView(
                          padding: EdgeInsets.only(left: kDefaultPadding),
                          scrollDirection: Axis.horizontal,
                          child: Text(
                            "Ahmet Şerif İzgören",
                            style: TextStyle(
                              fontSize: kAuthorSize,
                              color: kPrimaryText,
                            ),
                          ),
                        ),
                        SizedBox(height: kSizedBox / 2),
                        SingleChildScrollView(
                          padding: EdgeInsets.only(left: kDefaultPadding),
                          scrollDirection: Axis.horizontal,
                          child: Text(
                            "Elma Yayınevi",
                            style: TextStyle(
                              fontSize: kPublisherSize,
                              color: kPrimaryText,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
