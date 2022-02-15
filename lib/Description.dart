import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  String? description;
  String? Stockfield;
  String? Imgsource;

  Description({Key? key, this.Stockfield, this.description, this.Imgsource})
      : super(key: key);

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("تفصیل"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.Stockfield ?? ' ',
                textAlign: TextAlign.right,
                style: const TextStyle(fontSize: 30),
              ),
              const Text(
                "تفصیل",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.description ?? ' ',
                textAlign: TextAlign.right,
                style: const TextStyle(
                  fontSize: 18,
                  wordSpacing: 4,
                ),
              ),
              widget.Imgsource == 'null'
                  ? const SizedBox(
                      height: 100,
                      width: 1,
                    )
                  : Image(
                      image: AssetImage(widget.Imgsource!),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
