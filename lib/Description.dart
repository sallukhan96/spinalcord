import 'package:flutter/material.dart';

import 'lists/Blader.dart';

class Description extends StatefulWidget {
  String  description;
  String Stockfield;
   Description({Key? key,required this.Stockfield, required this.description}) : super(key: key);

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Description"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Text(
           'Sppinanl',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            "Description",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            "Description is the pattern of narrative"
                " development that aims to make vivid"
                " a place, object, character, or group."
                " Description is one of four rhetorical modes,"
                " along with exposition, argumentation, and narration."
                " In practice it would be difficult to write"
                " literature that drew on just one of the four basic modes",
            style: TextStyle(
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
