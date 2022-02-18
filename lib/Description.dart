import 'package:flutter/material.dart';

import 'models/CustmoCardModel.dart';

class Description extends StatefulWidget {
  List<Paragraph>? data;
  String? Stockfield;
  String? Imgsource;

  Description({Key? key, this.Stockfield, this.data, this.Imgsource})
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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 30, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.Stockfield ?? ' ',
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  style: const TextStyle(fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
                for (var i = 0; i < widget.data!.length; i++)
                  _paragraph(
                    heading: widget.data?[i].heading,
                    paragraph: widget.data?[i].paragraph,
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
      ),
    );
  }

  _paragraph({String? heading, String? paragraph}) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          heading ?? ' ',
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
          style: const TextStyle(fontSize: 22),
        ),
        Text(
          paragraph ?? ' ',
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
          style: const TextStyle(
            fontSize: 16,
            wordSpacing: 4,
          ),
        ),
      ],
    );
  }
}
