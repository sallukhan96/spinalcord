import 'package:flutter/material.dart';
import 'package:flutter_spinalcordinjury/models/CustmoCardModel.dart';
import 'data/text_data.dart';
import 'lists/list_data.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        ///home dashboard
        body: CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(15),
          sliver: SliverGrid.count(
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            crossAxisCount: 2,
            children: <Widget>[
              GridItem(
                label: 'جلد کی حفاظت ',
                imageUrl: 'assets/skin.png',
                data: TextData.Skin,
              ),
              GridItem(
                label: 'حرام مغز کی چوٹ',
                imageUrl: 'assets/compelete-injury.png',
                data: TextData.Complete_Injury,
              ),
              GridItem(
                label: 'نظام تنفس',
                imageUrl: 'assets/respiratory.png',
                data: TextData.Respiratory,
              ),
              GridItem(
                label: 'نظام انہضام',
                imageUrl: 'assets/digestive.png',
                data: TextData.Digestive,
              ),
              GridItem(
                label: 'مثانہ کا انتظام',
                imageUrl: 'assets/bladder.png',
                data: TextData.Blader,
              ),
              GridItem(
                label: 'حرکت کے افعال',
                imageUrl: 'assets/mobility.png',
                data: TextData.mobilities,
              ),
              GridItem(
                label: 'جنسی بحالی ',
                imageUrl: 'assets/Sexual.png',
                data: TextData.Sexual_Rehibilitaion,
              ),
              GridItem(
                label: 'نفسیاتی بحالی ',
                imageUrl: 'assets/depression.png',
                data: TextData.Depression,
              ),
              GridItem(
                label: 'سپاسٹیسٹی',
                imageUrl: 'assets/robotic-hand.png',
                data: TextData.Spasticity,
              ),
              GridItem(
                label: 'ویل چیئر',
                imageUrl: 'assets/imagesDescription/disabled.png',
                data: TextData.Wheelchair,
              ),
              GridItem(
                label: 'چوٹ کا علاج اور مستقبل',
                imageUrl: 'assets/disability.png',
                data: TextData.Treatment,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

/// Grid Item Widget
///

class GridItem extends StatelessWidget {
  const GridItem(
      {required this.imageUrl,
      required this.label,
      required this.data,
      Key? key})
      : super(key: key);

  final String imageUrl;
  final String label;
  final List<CustomCardModel> data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ListData(
                data: data,
                title: label,
              ),
            ));
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIcon(
              AssetImage(imageUrl),
              size: 65,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              label,
              style: const TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              //color of shadow
              spreadRadius: 1,
              blurRadius: 0.3,
              offset: const Offset(0, 0.5),
            ),
          ],
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xff00AFF0),
        ),
      ),
    );
  }
}
