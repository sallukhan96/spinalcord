import 'package:flutter/material.dart';
import 'package:flutter_spinalcordinjury/widgets/Card.dart';

import '../Description.dart';
import 'Blader.dart';
class Mobility extends StatefulWidget {

   Mobility({Key? key}) : super(key: key);

  @override
  _MobilityState createState() => _MobilityState();
}

class _MobilityState extends State<Mobility> {


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
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Customcard();
        },
      ),
    );

  }
}
