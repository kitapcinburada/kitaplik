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
                            Text("Okuyaca????m", style: kTextStyleBold),
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
                            ? Text("Okudu??un iyi oldu, bu kitaba benzer tavsiyeler almak ister misin?")
                            : Text("Okuma Plan??na Almak ??ster misiniz?")),
                  )
                ],
              ),
              Divider(thickness: kThickness),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Kitap ????in Notlar??m", style: kHeaderStyleBold),
                  Container(
                    width: size.width,
                    height: size.height * 0.1,
                    child: Text(
                        "Bu kitab?? lise y??llar??mda okumu??tum. Harika bir kitap bence."),
                  ),
                ],
              ),
              Divider(thickness: kThickness),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Kitap Hakk??nda", style: kHeaderStyleBold),
                  Container(
                    width: size.width,
                    height: size.height * 0.8,
                    child: Text(
                      "Antik M??s??r tanr??lar?? yery??z??ne indi??inden beri Carter Kane ve k??zkarde??i Sadie???nin ba???? beladan kurtulmad??. ??ki karde??, soylar?? gere??i b??y??k g????lere sahip; ancak hen??z haz??r de??illerken baz?? hain tanr??lar Brooklyn Evi???ne sald??r??ya ge??iyor. ??imdiyse en b??y??k d????manlar??, Kaos???un y??lan?? Apep y??kseli??te. Apep???in serbest kalmas?? birka?? g??n i??erisinde ??nlenemezse d??nyan??n sonu gelecek. Ba??ka bir deyi??le bu, Kane ailesi i??in son derece s??radan bir g??n."
                      "\n\n Carter ve Sadie, Kaos g????leriyle sava??abilmek i??in G??ne?? Tanr??s?? Ra???y?? uyand??rmal??. Fakat bunu tabii ki bug??ne dek hi??bir b??y??c?? ba??aramad??. ??nce b??t??n d??nyada Ra???n??n Kitab?????n?? aramalar??, sonra da ???bulurlarsa??? kitaptaki b??y??leri ????zmeleri gerekecek. Ah, Ra???n??n nerede oldu??unu kimse bilmiyor bu arada, s??ylemi?? miydik?"
                      "\n\n Antik M??s??r tanr??lar??yla verilen sava?? k??ran k??rana devam ediyor! B??t??n y??k, iki karde??in omzunda."
                      "\n\n ??ok satan Percy Jackson ve Olimposlular serisinin yazar?? Rick Riordan, M??s??r Mitolojisi ??zerine kurgulad?????? Kane G??nceleri serisinin ikinci kitab?? Ate?? Taht?? ???nda yine unutulmaz karakterler yarat??yor ve soluk solu??a bir macera sunuyor.",
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
            Text("D??zenle", style: kTextStyleBold),
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
