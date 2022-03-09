import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff00AFF0),
        title: Text("اسپائنل کارڈ کی چوٹ "),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.all(30),
              width: double.infinity,
              height: 420,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "ریڑھ کی ہڈی کی چوٹ کی ویب سائٹ اور ایپ کا مقصد ریڑھ کی ہڈی کے متاثرین کی بھرپورزندگی گزارنے میں مدد کرنا ہے۔ ابتدائی طور پر موجود معلوماتموبائل ایپلیکیشن مصنف آصف اللہ خان کی کتاب 'کثرت سے زندگی گزارنا، ریڑھ کی ہڈی کی چوٹ کے ساتھ' سے لی گئی ہے۔ہم خیبر میڈیکل یونیورسٹی پشاور، پرہلک سنٹر پشاور اور پرہلکسنٹر پشاور کے دوست کا تہہ دل سے شکریہ ادا کرنا چاہتے ہیں جن کی مسلسل محنت سےاس موبائل ایپلیکیشن اور ویبسائٹ کو کامیابی کے ساتھ بنایا گیا ہے۔ - ڈاکٹر عاطف عرش،اسسٹنٹ پروفیسر خیبر یونیورسٹی پشاور",
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                  style: const TextStyle(
                    color: Color(0xff2D2D2D),
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    fontFamily: 'NotoNastaliqUrdu',
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
