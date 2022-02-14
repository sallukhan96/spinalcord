import 'package:flutter/material.dart';
import 'package:flutter_spinalcordinjury/widgets/Card.dart';

class Respiratory extends StatefulWidget {
  Respiratory({Key? key}) : super(key: key);

  @override
  _RespiratoryState createState() => _RespiratoryState();
}

class _RespiratoryState extends State<Respiratory> {
  List stocksList = [
    'عمل تنفس کا طریقہ کار ',
    "حرام مغز کی چوٹ کے بعد ",
    "حرام مغز کی چوٹ کے بعد سانس لینے کے مسائل",
    "سہارے کی مدد سے کھانسنا ",
    "سپائیرو میٹر",


  ];
  List images = [
    "assets/images/1.jpeg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",

  ];
  List description = [
   'حرام مغز کی چوٹ سے پہلے '
  'آکسیجن ناک کے ذریعے ہوا کی نالی سے ہوتی ہوئی '
  'انسان کی پھیپھڑوں میں جاتی ہے۔ پھیپھڑوں میں لاکھو ں کی '
  'تعداد میں ہوا کے چھوٹی تھیلیاں ہوتی ہیں جنہیں ایلو ؤ لائی'
   'کہتے ہیں ان میں خون کی چھوٹی رگیں ہوتی ہیں۔ آکسیجن یہاں پر '
  'خون میں شامل ہوکر پورے جسم میں جاتی ہے ۔ کاربن ڈائی '
  'آکسائیڈ یہاں خون سے جدا ہوکر جسم سے باہر خارج ہوتی ہے۔'

    ,


    'حرام مغز کی چوٹ کے بعد '
    'حرام مغز کی چوٹ کے بعد چونکہ دماغ سے، سانس لینے کے'
    'لیےاستعمال ہونے والے عضلات تک پیغامات پہنچنے کا سلسلہ متاثر '
    'ہوتا ہے اس لیے آپ کی سانس لینے کی صلاحیت بھی متاثر ہوتی ہے۔'
    'یہ کتنی متاثر ہوتی ہے اس کا دارومدار آپ کے چوٹ کے لیول '
    'اور نوعیت پر ہے۔ جتنا لیول اوپر ہوگا اتنا اثر زیادہ ہوگا۔'
    ,


    'سانس کے مسائل اوپر لیول کے پیرآپلیجکس اور کواڈریپلیجکس کو ہوتے ہیں۔ '
        'ان میں چونکہ گہری سانس لینے، کھانسنے اور چھاتی کو صاف کرنے '
        'کے لیے درکار عضلات کام نہیں کرتے اس لیے محتلف مسائل'
        '  پیدا ہونے کا خدشہ ہوتا ہے جوکہ مندرجہ ذیل ہیں۔ ',


    'اوپر درجہ کی چوٹ ٹی 10 یا اس سے اوپر میں جب سینے میں  بلغم جمع ہوجائے'
        ' تو خود سے کھانس کر اس کو باہر نکالنا مشکل ہوتا ہے۔ چنانچہ کسی دوسرے فرد '
        'کی مدد سے زور سے کھانس کر بلغم کو باہر نکالنے کی کوشش کریں۔',


    'اگر آپ کی چوٹ ٹی 8 '
        'اور سی 3 کے درمیان ہو تو یہ آلہ آپ کے چھاتی کے عضلات کو مظبوط'
        ' بنانے کے لیے انتہائی مفید ہے۔ چنانچہ اس کے ذریعے باقاعدگی سے گہری '
        'سانسیں لے کر پھیپھڑوں کو ورزش دیں۔ تاکہ متعلقہ عضلات مظبوط ہوکر '
        'آپ بہتر طریقے سے کھانس سکیں اور فاسد مواد کو باہر نکال سکیں۔ ',

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
          "عمل تنفس",
        ),
        centerTitle: true,
        backgroundColor: Color(0xff00AFF0),
      ),
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height * .90,
        width: MediaQuery
            .of(context)
            .size
            .width * .90,
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
