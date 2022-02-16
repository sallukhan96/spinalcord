import 'package:flutter/material.dart';
import 'package:flutter_spinalcordinjury/lists/list_data.dart';
import 'package:flutter_spinalcordinjury/models/CustmoCardModel.dart';
import 'data/text_data.dart';

class HomeTwo extends StatefulWidget {
  const HomeTwo({Key? key}) : super(key: key);

  @override
  _HomeTwoState createState() => _HomeTwoState();
}

class _HomeTwoState extends State<HomeTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        ///home dashboard
        body: CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(25),
          sliver: SliverGrid.count(
            crossAxisSpacing: 25,
            mainAxisSpacing: 25,
            crossAxisCount: 2,
            children: <Widget>[
              GridItem(
                label: 'حرکت کے افعال',
                imageUrl: 'assets/mobility.png',
                data: TextData.mobilities,
              ),
              GridItem(
                label: 'مثانہ کا انتظام',
                imageUrl: 'assets/bladder.png',
                data: TextData.Blader,
              ),
              GridItem(
                label: 'جلد کی حفاظت ',
                imageUrl: 'assets/skin.png',
                data: TextData.Skin,
              ),
              GridItem(
                label: 'نظام انہضام',
                imageUrl: 'assets/digestive.png',
                data: TextData.Digestive,
              ),
              GridItem(
                label: 'نظام تنفس',
                imageUrl: 'assets/respiratory.png',
                data: TextData.Respiratory,
              ),
              GridItem(
                label: 'مکمل زخ  ',
                imageUrl: 'assets/compelete-injury.png',
                data: TextData.Complete_Injury,
              ),
              GridItem(
                label: 'نامکمل زخم ',
                imageUrl: 'assets/incomplete-injury.png',
                data: TextData.Incomplete_Injury,
              ),
              GridItem(
                label: 'نفسیاتی بحالی ',
                imageUrl: 'assets/depression.png',
                data: TextData.Depression,
              ),
              GridItem(
                label: 'جنسی بحالی ',
                imageUrl: 'assets/Sexual.png',
                data: TextData.Sexual_Rehibilitaion,
              ),
              GridItem(
                label: 'معذوری',
                imageUrl: 'assets/disability.png',
                data: TextData.Disabilities,
              ),

              ///old code for cards here
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
              size: 40,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              label,
              style: const TextStyle(fontSize: 17),
            ),
          ],
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              //color of shadow
              spreadRadius: 4,
              blurRadius: 10,
              offset: const Offset(4, 4),
            ),
          ],
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xff00AFF0),
        ),
      ),
    );
  }
}
