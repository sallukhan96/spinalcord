import 'package:flutter/material.dart';
import 'package:flutter_spinalcordinjury/widgets/Card.dart';

class Incomplete_Injury extends StatefulWidget {
  Incomplete_Injury({Key? key}) : super(key: key);

  @override
  _Incomplete_InjuryState createState() => _Incomplete_InjuryState();
}

class _Incomplete_InjuryState extends State<Incomplete_Injury> {
  List stocksList = [
    "نامکمل زخم ",
    "ASIA Scale ",
    "ASIA (A)",
    "ASIA (B)",
    "ASIA (C)",
    "ASIA (D)",
    "ASIA (E)",





  ];
  List images = [
    "assets/images/1.jpeg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",

  ];
  List description = [
    'اگر حرام مغز کی چوٹ کے بعد چوٹ کے نیچے'
        ' جسم کے حصے میں کچھ احساسات اور حرکات باقی رہیں تو اس قسم کے '
        'زخم کو نامکمل زخم یا (Incomplete injury)کہتے ہیں۔ اس قسم کی چوٹ '
        'میں بہتری کی امید ہوتی ہے۔چوٹ لگنے کے بعد جیسے ہی حرام مغز کی '
        'سوجن کم ہونے لگتی ہے تو بہتری آنا شروع ہوجاتی ہے اور کئی مہینوں'
        ' تک بلکہ بعض صورتوں میں میں تو کئی سالوں تک بہتری دیکھی گئی ہے. ',




        'ASIA کا مطلب (American Spinalcord Injury Association).'
       ' حرام مغز کی چوٹ کے بعد جسم میں کتنی حسی '
      '  و حرکی خرابی واقع ہوچکی ہے یہ معلوم کرنے کے'
        'لئے یہ درجہ بندی استعمال کیا جاتا ہے۔ اس درجہ بندی کی بنیاد'
        'اس با ت پر ہے کہ مریض چوٹ سے نیچے جسم کے مختلف حصوں میں کتنا'
         'تک کی جاتی ہے۔ '
        'اے مکمل حسی وحرکی خرابی کو ظاہر کرتی ہے۔ جبکہ ای میں کوئی '
       ' خرابی جسم میں نہیں ہوتی۔ تفصیلات درجہ ذیل ہیں۔'
    ,




    'اس درجہ میں چوٹ سے نیچے جسم کے کسی حصے (بشمول مقعد) میں احساسات وحرکات نہیں پائی جاتی ہیں۔ ',




    'اس درجہ میں چوٹ سے نیچے جسم کے مختلف جگہوں (بشمول مقعد) میں کچھ احساسات ہوتی ہیں۔ ',



    'اس درجہ میں چوٹ سے نیچے جسم کے عضلات میں'
        ' کچھ حرکت ہوتی ہے۔ لیکن ان عضلات میں حرکت اتنی کمزور ہوتی ہے  کہ '
        'ان میں سے پچاس فیصد عضلات کششش ثقل کے مخالف حرکت نہیں کرسکتے',



   'اس درجہ میں چوٹ سے نیچے جسم کے حصوں میں حرکات اور بھی بہتر ہوتے ہیں اور پچاس '
       'فیصد سے زیادہ عضلات کشش ثقل کے مخالف حرکت کے قابل ہوتے ہیں۔ ',


  'اس درجہ میں حرکات واحساسات مکمل صحیح ہوتے ہیں اور کوئی حسی یا حرکی خرابی نہیں ہوتی ہے۔',



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
          "نامکمل زخم ",
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
