import 'package:flutter/material.dart';
import 'package:flutter_spinalcordinjury/widgets/Card.dart';

class Disabilities extends StatefulWidget {
  Disabilities({Key? key}) : super(key: key);

  @override
  _DisabilitiesState createState() => _DisabilitiesState();
}

class _DisabilitiesState extends State<Disabilities> {
  List stocksList = [
    "جزوی مفلوج جسم یا پیرآپلیجیا",
    "مکمل مفلوج جسم یا کواڈریپلیجیا",








  ];
  List images = [
    "assets/images/1.jpeg",
    "assets/images/2.jpg",

  ];
  List description = [
    'پیرآپلیجیا دو الفاظ کا مجموعہ ہے۔ پیرا کی معنی "دو" '
        'اور پلیجیا کی معنی "حرکت    نہ کرنا"۔ یعنی یہ حرام مغز کی چوٹ کی '
        'وہ قسم ہے جس میں انسان کے  دونوں ٹانگیں متاثر ہو تے ہیں  ۔'
        ' یہ عمومًا تب واقعہ ہو تا ہے جب حرام مغز کی چوٹ گردن سے نیچے'
        '  ہوتی ہے۔ اس میں دونوں بازو اور ہاتھ صحیح   کام کرتے ہیں۔ '
        'دونوں ٹانگیں اور پیشاب و پاخانہ کے نظام متاثر ہوتے ہیں۔ ',


    'کواڈریپلیجیا دو الفاظ کا مجموعہ ہے۔'
        ' کواڈ کی معنی "چار" اور پلیجیا کی معنی "حرکت    نہ کرنا"۔'
        ' یعنی یہ حرام مغز کی چوٹ کی وہ قسم ہے جس میں انسان کے دونوں '
        'بازو اور ٹانگیں متاثر ہو تی ہیں  ۔ ۔ پیشاب و پاخانہ کا نظام '
        'بھی متاثر ہوتا ہے ۔ یہ عمومًا" تب واقعہ ہو تی ہے۔ جب حرام '
        'مغز کو چوٹ گردن کے حصہ     میں لگ جاتی ہے ۔ یا دوسرے لفظوں'
        ' میں جب کسی حادثے کے نتیجے میں انسان کی گردن ٹوٹ  جاتی ہے',

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
          "معذوریاں",
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
