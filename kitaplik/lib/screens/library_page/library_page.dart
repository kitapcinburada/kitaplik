import 'package:flutter/material.dart';
import 'package:kitaplik/constants.dart';
import 'package:kitaplik/screens/library_page/components/shelf_name.dart';
import 'package:kitaplik/screens/shelf_page/shelf_page.dart';

class LibraryPage extends StatefulWidget {
  static String routeName = '/LibraryPage';

  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  int selectedShelf = 0;
  List<String> Shelves = ["2015", "2016", "2017", "2018"];

  TextEditingController theNameofShelfController = TextEditingController();

  Future<String> createAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Raf Adını Giriniz"),
          content: TextField(
            controller: theNameofShelfController,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kPrimaryText,
              fontSize: 24,
            ),
          ),
          actions: [
            MaterialButton(
              elevation: 5,
              child: Text(
                "Ekle",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                setState(() {
                  Navigator.of(context)
                      .pop(theNameofShelfController.text.toString());
                  Shelves.add(theNameofShelfController.text);
                });
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rafları Düzenle",
          style: TextStyle(
            fontSize: kAppBarSize,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemCount: Shelves.length,
          separatorBuilder: (BuildContext context, int index) => const Divider(
            thickness: 2,
            color: kDividerColor,
          ),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GestureDetector(
              onTap: () {
                selectedShelf = index;
                Navigator.pushNamed(context, ShelfPage.routeName,
                    arguments: {'raf': '${Shelves[selectedShelf]}'});
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: size.height * 0.06,
                          width: size.height * 0.06,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.amber,
                          ),
                          child: Center(
                            child: Text(
                              "20",
                              style: TextStyle(
                                fontSize: 20,
                                color: kTextIcons,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          Shelves[index],
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        IconButton(
                          icon: Icon(Icons.mode_edit),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kFloatingButton,
        foregroundColor: kTextIcons,
        onPressed: () {
          setState(() {
            createAlertDialog(context).then((value) {
              final mySnackBar = SnackBar(
                behavior: SnackBarBehavior.floating,
                content: Text("$value rafı eklenmiştir."),
              );
              ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
            });
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
