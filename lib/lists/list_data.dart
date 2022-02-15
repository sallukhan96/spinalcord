import 'package:flutter/material.dart';
import 'package:flutter_spinalcordinjury/models/CustmoCardModel.dart';
import 'package:flutter_spinalcordinjury/widgets/Card.dart';

class ListData extends StatelessWidget {
   const ListData({required this.data, required this.title, Key? key})
      : super(key: key);
  final String title;
  final List<CustomCardModel> data;

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
          title,
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff00AFF0),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * .90,
        width: MediaQuery.of(context).size.width * .90,
        child: ListView.builder(
          itemCount: data.isEmpty?1:data.length,
          itemBuilder: (context, index) {
            return
              data.isEmpty?const Center(child:Text('No Data')  ,):
              Customcard(
              imageUrl: data[index].imageUrl!,
              name: data[index].heading!,
              desc: data[index].paragraph,
            );
          },
        ),
      ),
    );
  }
}
