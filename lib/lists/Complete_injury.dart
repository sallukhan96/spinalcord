import 'package:flutter/material.dart';
import 'package:flutter_spinalcordinjury/widgets/Card.dart';

class Complete_Injury extends StatefulWidget {
  Complete_Injury({Key? key}) : super(key: key);

  @override
  _Complete_InjuryState createState() => _Complete_InjuryState();
}

class _Complete_InjuryState extends State<Complete_Injury> {
  List stocksList = [
    "مکمل زخم ",


  ];
  List images = [
    "assets/images/1.jpeg",

  ];
  List description = [
    'جب حرام مغز کی چوٹ نہایت ہی '
        'شدید نوعیت کی ہو اور کوئی  بھی پیغام دماغ سے جسم  اور جسم سے'
        'دماغ تک اس کے ذریعے نہ جاسکےتو ایسے زخم کو حرام مغز کا مکمل چوٹ یا'
     ' (Complete Spinal Cord Injury) کہتے ہیں۔ اس قسم کی چوٹ میں زخم کے نیچے جسم میں'
    'محسوس کرنے اور حرکت کرنے'
    'کی صلاحیت مکمل طور پر ختم ہوجاتی ہے۔'
    'اس میں بہتری کی امید کم ہوتی ہے اور'
   ' انسان ہمیشہ کے لیے معذور ہوجاتا ہے۔'
    ,



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
          "مکمل زخم ",
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
