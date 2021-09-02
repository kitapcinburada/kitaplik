import 'package:flutter/material.dart';
import 'package:kitaplik/constants.dart';
import 'package:kitaplik/screens/about_page/components/abookBook_Image.dart';
import 'package:kitaplik/screens/about_page/components/aboutBook_Info/abookBook_Info.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

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
                  AboutBook_Image(size: size),
                  AboutBook_Info(size: size),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BookCommands(size: size),
                  SizedBox(width: kSizedBox / 3),
                  BookEditing(size: size),
                  SizedBox(width: kSizedBox / 3),
                  BookDelete(size: size),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 150,
                    height: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Radio(
                                value: 1,
                                groupValue: selectedRadio,
                                activeColor: kDarkPrimaryColor,
                                onChanged: (val) {
                                  setSelectedRadio(val);
                                },
                              ),
                              Text("Okudum", style: kTextStyleBold),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: selectedRadio,
                              activeColor: kDarkPrimaryColor,
                              onChanged: (val) {
                                setSelectedRadio(val);
                              },
                            ),
                            Text("Okuyacağım", style: kTextStyleBold),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.1,
                    height: size.height * 0.11,
                    child: VerticalDivider(thickness: kThickness),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: (selectedRadio == 1)
                            ? Text("Okuduğun iyi oldu, bu kitaba benzer tavsiyeler almak ister misin?")
                            : Text("Okuma Planına Almak İster misiniz?")),
                  )
                ],
              ),
              Divider(thickness: kThickness),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Kitap İçin Notlarım", style: kHeaderStyleBold),
                  Container(
                    width: size.width,
                    height: size.height * 0.1,
                    child: Text(
                        "Bu kitabı lise yıllarımda okumuştum. Harika bir kitap bence."),
                  ),
                ],
              ),
              Divider(thickness: kThickness),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Kitap Hakkında", style: kHeaderStyleBold),
                  Container(
                    width: size.width,
                    height: size.height * 0.8,
                    child: Text(
                      "Antik Mısır tanrıları yeryüzüne indiğinden beri Carter Kane ve kızkardeşi Sadie’nin başı beladan kurtulmadı. İki kardeş, soyları gereği büyük güçlere sahip; ancak henüz hazır değillerken bazı hain tanrılar Brooklyn Evi’ne saldırıya geçiyor. Şimdiyse en büyük düşmanları, Kaos’un yılanı Apep yükselişte. Apep’in serbest kalması birkaç gün içerisinde önlenemezse dünyanın sonu gelecek. Başka bir deyişle bu, Kane ailesi için son derece sıradan bir gün."
                      "\n\n Carter ve Sadie, Kaos güçleriyle savaşabilmek için Güneş Tanrısı Ra’yı uyandırmalı. Fakat bunu tabii ki bugüne dek hiçbir büyücü başaramadı. Önce bütün dünyada Ra’nın Kitabı’nı aramaları, sonra da –bulurlarsa– kitaptaki büyüleri çözmeleri gerekecek. Ah, Ra’nın nerede olduğunu kimse bilmiyor bu arada, söylemiş miydik?"
                      "\n\n Antik Mısır tanrılarıyla verilen savaş kıran kırana devam ediyor! Bütün yük, iki kardeşin omzunda."
                      "\n\n Çok satan Percy Jackson ve Olimposlular serisinin yazarı Rick Riordan, Mısır Mitolojisi üzerine kurguladığı Kane Günceleri serisinin ikinci kitabı Ateş Tahtı ’nda yine unutulmaz karakterler yaratıyor ve soluk soluğa bir macera sunuyor.",
                      style: TextStyle(fontSize: 18),
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

class BookDelete extends StatelessWidget {
  const BookDelete({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.07,
      width: size.height * 0.15,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: kDefaultPadding / 3),
        child: Row(
          children: [
            Icon(Icons.delete),
            SizedBox(width: kSizedBox / 3),
            Text("Sil", style: kTextStyleBold),
          ],
        ),
      ),
    );
  }
}

class BookEditing extends StatelessWidget {
  const BookEditing({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.07,
      width: size.height * 0.15,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: kDefaultPadding / 3),
        child: Row(
          children: [
            Icon(Icons.mode_edit),
            SizedBox(width: kSizedBox / 3),
            Text("Düzenle", style: kTextStyleBold),
          ],
        ),
      ),
    );
  }
}

class BookCommands extends StatelessWidget {
  const BookCommands({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.07,
      width: size.height * 0.15,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: kDefaultPadding / 3),
        child: Row(
          children: [
            Icon(Icons.insert_comment_rounded),
            SizedBox(width: kSizedBox / 3),
            Text("Yorumlar", style: kTextStyleBold),
          ],
        ),
      ),
    );
  }
}
