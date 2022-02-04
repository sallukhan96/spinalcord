import 'package:flutter/material.dart';

import '../Description.dart';

class Customcard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String desc;
  Customcard(
      {Key? key,
      required this.name,
      required this.desc,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Color(0xff00AFF0),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ListTile(
            title: Text(
              name,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage("${imageUrl}"),
            ),
            trailing: InkWell(
              child: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Description(
                        description: desc,
                        Stockfield: name,
                      ),
                    ));
              },
            ),
            iconColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
