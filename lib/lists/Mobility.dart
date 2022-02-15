import 'package:flutter/material.dart';
import 'package:flutter_spinalcordinjury/widgets/Card.dart';

class Mobility extends StatefulWidget {
  Mobility({Key? key}) : super(key: key);

  @override
  _MobilityState createState() => _MobilityState();
}

class _MobilityState extends State<Mobility> {
  List stocksList = [
    "کندھوں کو موڑنا",
    "کندھوں کو جسم سے دور لے جانا",
    "کندھوں  کو متوازی جسم سے دو ر لے جانااور قریب لانا",
    "کندھوں کوگھمانا",
    " کہنی کو موڑنا"
    "اور سیدھا کرنا",

    "اگلے بازو کو گھمانا",

    "کلائی اورانگلیوں کو موڑنااور سیدھا کرنا",
    "انگوٹھے کو حرکت دینا",

  ];
  List images = [
    "assets/imagesDescription/mobility2.png",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",

  ];
  List description = [
       'مددگار آپ کے وہیل چئیر کے ساتھ سائیڈ پر کھڑا ہو۔'
           ' آپنے ایک ہاتھ کے ساتھ آپ کے بازو کے ایک طرف اور '
           'دوسرے ہاتھ کے ساتھ  آپ کے بازو کی دوسری طرف کو پکڑے۔ پھر'
           ' کہنی کو سیدھا رکھتے ہوئے آپ کے بازو کو اوپر نیچے اٹھائیے'
       ,


    'ورزش دینے والا آپ کے پیچھے کھڑا ہو۔ پھر دونوں ہاتھوں  کی مدد سے آپ کے بازو کو پکڑے۔'
        ' پھر کہنی کو سیدھا رکھتے ہوئے بازو کو کندھے کی اونچائی '
    'تک سائیڈ پر لے آئے اور پھر سر کے اوپر لے جائے '
        'پھر دوبارہ اسی اونچائی پر اوپر اور نیچے حرکت دے',




    'مددگار آپ کے بازو کو کہنی اور کلائی سے پکڑ کر کندھے'
        ' کے اونچائی پر سائیڈ پر لے آئے۔ پھر بازو کو موڑتے ہوئے آپ کے ہاتھ مخالف کندھے'
        ' کے ساتھ ٹچ کرے اور پھر دوبارہ اسی پوزیشن میں لے آئے',



    'مددگار آپ کے بازو کو کہنی اور اور'
        ' کلائی سے پکڑ کر کندھوں  کی اونچائی پر لے آئے اور کہنی کو نوے درجے پر موڑ ے۔'
        ' پھر ہاتھ کے اگلے حصے کو چھت اور زمین کی طرف حرکت دے',




  'مددگار آپ کے بازو کو کلائی اور اوپر کے حصے سے پکڑ کر کلائی کو کندھے'
      'کے ساتھ ملائے اور پھر مکمل سیدھا کرے۔',


    'آپنی کہنی کو موڑ کر سہارے پر رکھیں'
        '۔ مددگار آپ کے ہاتھ کو ہاتھ ملانے کے انداز'
        ' میں پکڑ کر ہاتھ کو اس انداز میں گھمائے کہ ہتھیلی کا رخ اوپر نیچے ہو۔',


    'مددگار ایک ہاتھ سے آپ کے کلائی کو پکڑے'
        ' اور دوسرے ہاتھ سے انگلیوں کو پکڑ کر موڑے'
        ' اور پھر کلائی کو اوپر نیچے اس انداز سے حرکت دے'
        ' کہ نیچے کی طرف آپ کی انگلیاں سیدھی ہو۔',


    'مددگار آپ کے انگوٹھے کو پکڑ کر شہادت کی انگلی سے دور لے جائے'
        ' ۔ پھر چھوٹی انگلی کے سا تھ ٹچ کرے اور دوبارہ اسی حالت میں لے آئے ۔',


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.white,
            )),
        title: Text(
          "حرکت کے افعال",
        ),
        centerTitle: true,
        backgroundColor: Color(0xff00AFF0),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * .90,
        width: MediaQuery.of(context).size.width * .90,
        child: ListView.builder(
          itemCount: stocksList.length,
          itemBuilder: (context, index) {
            return Customcard(
              imageUrl: images[index],
              name: stocksList[index],
              desc: description[index],
            );
          },
        ),
      ),
    );
  }
}
