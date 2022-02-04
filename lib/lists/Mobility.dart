import 'package:flutter/material.dart';
import 'package:flutter_spinalcordinjury/widgets/Card.dart';

class Mobility extends StatefulWidget {
  Mobility({Key? key}) : super(key: key);

  @override
  _MobilityState createState() => _MobilityState();
}

class _MobilityState extends State<Mobility> {
  List stocksList = [
    "Mobility list_1",
    "Mobility list_2",
    "Mobility list_3",
    "Mobility list_4",
    "Mobility list_5",
    "Mobility list_6",
    "Mobility list_7",
    "Mobility list_8",
    "Mobility list_9",
    "Mobility list_10",
  ];
  List images = [
    "assets/images/1.jpeg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
    "assets/images/9.jpg",
    "assets/images/10.jpg",
  ];
  List description = [
    '111The spinal cord is a long bundle of nerves and cells that '
        'extends from the lower portion of the brain to the'
        ' lower back. It carries signals between the brain '
        'and the rest of the body',
    '222The spinal cord is a long bundle of nerves and cells that '
        'extends from the lower portion of the brain to the'
        ' lower back. It carries signals between the brain '
        'and the rest of the body',
    '3333The spinal cord is a long bundle of nerves and cells that '
        'extends from the lower portion of the brain to the'
        ' lower back. It carries signals between the brain '
        'and the rest of the body',
    '444The spinal cord is a long bundle of nerves and cells that '
        'extends from the lower portion of the brain to the'
        ' lower back. It carries signals between the brain '
        'and the rest of the body',
    '5555The spinal cord is a long bundle of nerves and cells that '
        'extends from the lower portion of the brain to the'
        ' lower back. It carries signals between the brain '
        'and the rest of the body',
    '6666The spinal cord is a long bundle of nerves and cells that '
        'extends from the lower portion of the brain to the'
        ' lower back. It carries signals between the brain '
        'and the rest of the body',
    '777he spinal cord is a long bundle of nerves and cells that '
        'extends from the lower portion of the brain to the'
        ' lower back. It carries signals between the brain '
        'and the rest of the body',
    '8888The spinal cord is a long bundle of nerves and cells that '
        'extends from the lower portion of the brain to the'
        ' lower back. It carries signals between the brain '
        'and the rest of the body',
    '999The spinal cord is a long bundle of nerves and cells that '
        'extends from the lower portion of the brain to the'
        ' lower back. It carries signals between the brain '
        'and the rest of the body',
    '101010The spinal cord is a long bundle of nerves and cells that '
        'extends from the lower portion of the brain to the'
        ' lower back. It carries signals between the brain '
        'and the rest of the body',
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
          "Mobility Activity",
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
