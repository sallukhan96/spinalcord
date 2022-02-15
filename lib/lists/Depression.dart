import 'package:flutter/material.dart';
import 'package:flutter_spinalcordinjury/widgets/Card.dart';

class Depression extends StatefulWidget {
  Depression({Key? key}) : super(key: key);

  @override
  _DepressionState createState() => _DepressionState();
}

class _DepressionState extends State<Depression> {
  List stocksList = [
    "ڈپریشن",
    "ڈپریشن کے علامات ",
    "ڈپریشن کا علاج ",






  ];
  List images = [
    "assets/images/1.jpeg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",

  ];
  List description = [
   'زندگی میں خوشی، غم، فکر و پریشانی عام سے احساسات ہیں جن کا ہر'
       ' انسان کو سامنا ہے۔ لیکن جب فکر و پریشانی بڑھ کر ڈپریشن کی شکل'
       ' اختیار کر ے تو یہ ایک خطرناک چیز ہے اور اس کا علاج کریں کیونکہ'
       ' دوسری بیماریوں کی طرح یہ بھی ایک بیماری ہے اور علاج طلب ہے',



    '	نیند نہ آنا'
  	'بھوک  کا متاثر ہونا۔'
  'پریشان و ناامید محسوس کرنا۔'
  'زندگی کے معاملات میں دلچسپی نہ لینا یا ان سے لطف اندوز نہ ہونا۔'
  'ہر وقت تھکن محسوس کرنا۔'
  'فیصلہ کرنے میں دقت محسوس کرنا۔'
  'آپنی زندگی بے کار محسوس ہونا یا اس کا کوئی مطلب نظر نہ آنا اور آپنے آپ کو موردالزام محسوس کر نا'
  ,


    'اچھی بات یہ ہے کہ ڈپریشن کوئی نا قا بل علاج مرض  نہیں ہے۔'
        'اس کا علاج کرکے آپ آسانی سے نارمل حالت میں اسکتے ہیں۔'
    'پچھلے سطور میں بیان کی گئ مثبت باتوں پر عمل کریں۔ انشاءاللہ ڈپریشن '
        'آپ کے قریب بھی نہیں آئے گی اور اگر ہے تو ٹھیک ہوجائے گی۔ '
    'ادویات  ڈاکٹر کے مشورے سے استعمال کریں ۔ یہ جسم کے کیمیائی توازن کو بحال'
        ' کرتی ہیں جس سے آپ ذہنی اور جسمانی طور پر پر بہتر محسوس کریں گے۔',

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
          "نفسیاتی بحالی",
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
