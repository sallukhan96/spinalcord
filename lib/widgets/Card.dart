import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Description.dart';
import '../models/CustmoCardModel.dart';

class Customcard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final List<Paragraph>?  desc;

  Customcard(
      {Key? key,
      required this.name,
      required this.desc,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 10, 8, 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Description(
                  data: desc,
                  Stockfield: name, Imgsource: imageUrl,

                ),
              ));
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: Colors.lightBlueAccent.withOpacity(0.4),
              width: 6,
            ),
          ),
          color: Color(0xff00AFF0),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: ListTile(
              title: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              ///images of card is commented
              // leading: CircleAvatar(
              //   backgroundImage: AssetImage("${imageUrl}"),
              // ),
              trailing: InkWell(
                child: Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Description(
                          data: desc,
                          Stockfield: name, Imgsource: '/imageUrl',
                        ),
                      ));
                },
              ),
              iconColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
