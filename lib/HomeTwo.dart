
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
        body:
        CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(25),
          sliver: SliverGrid.count(
            crossAxisSpacing: 25,
            mainAxisSpacing: 25,
            crossAxisCount: 2,
            children: <Widget>[
              GridItem(label:'حرکت کے افعال' ,imageUrl:'assets/mobility.png' ,data: TextData.mobilities,),
              GridItem(label:'مثانہ کا انتظام' ,imageUrl:'assets/bladder.png' ,data: TextData.depression,),
              GridItem(label:'جلد کی حفاظت ' ,imageUrl:'assets/skin.png' ,data: TextData.mobilities,),
              GridItem(label:'نظام انہضام' ,imageUrl:'assets/digestive.png' ,data: TextData.mobilities,),
              GridItem(label:'نظام تنفس' ,imageUrl:'assets/respiratory.png' ,data: TextData.mobilities,),
              GridItem(label:'مکمل زخ  ' ,imageUrl:'assets/compelete-injury.png' ,data: TextData.mobilities,),
              GridItem(label:'نامکمل زخم ' ,imageUrl:'assets/incomplete-injury.png' ,data: TextData.mobilities,),
              GridItem(label:'نفسیاتی بحالی ' ,imageUrl:'assets/depression.png' ,data: TextData.mobilities,),
              GridItem(label:'جنسی بحالی ' ,imageUrl:'assets/Sexual.png' ,data: TextData.mobilities,),
              GridItem(label:'معذوری' ,imageUrl:'assets/disability.png' ,data: TextData.mobilities,),


              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => Mobility(),
              //         ));
              //   },
              //   child: Container(
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: const [
              //         ImageIcon(
              //           AssetImage('assets/mobility.png'),
              //           size: 40,
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Text(
              //           "حرکت کے افعال",
              //           style: TextStyle(fontSize: 17),
              //         ),
              //       ],
              //     ),
              //     decoration: BoxDecoration(
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.black.withOpacity(0.4),
              //           //color of shadow
              //           spreadRadius: 4,
              //           blurRadius: 10,
              //           offset: const Offset(4, 4),
              //         ),
              //       ],
              //       borderRadius: BorderRadius.circular(30),
              //       color: const Color(0xff00AFF0),
              //     ),
              //   ),
              // ),
              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => Blader(),
              //         ));
              //   },
              //   child: Container(
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: const [
              //         ImageIcon(
              //           AssetImage('assets/bladder.png'),
              //           size: 40,
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Text(
              //           "مثانہ کا انتظام",
              //           style: TextStyle(fontSize: 17),
              //         ),
              //       ],
              //     ),
              //     decoration: BoxDecoration(
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.black.withOpacity(0.4),
              //           //color of shadow
              //           spreadRadius: 4,
              //           blurRadius: 10,
              //           offset: Offset(4, 4),
              //         ),
              //       ],
              //       borderRadius: BorderRadius.circular(30),
              //       color: Color(0xff00AFF0),
              //     ),
              //   ),
              // ),
              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => Skin(),
              //         ));
              //   },
              //   child: Container(
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: const [
              //         ImageIcon(
              //           AssetImage('assets/skin.png'),
              //           size: 40,
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Text(
              //           "جلد کی حفاظت ",
              //           style: TextStyle(fontSize: 17),
              //         ),
              //       ],
              //     ),
              //     decoration: BoxDecoration(
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.black.withOpacity(0.4),
              //           //color of shadow
              //           spreadRadius: 4,
              //           blurRadius: 10,
              //           offset: Offset(4, 4),
              //         ),
              //       ],
              //       borderRadius: BorderRadius.circular(30),
              //       color: Color(0xff00AFF0),
              //     ),
              //   ),
              // ),
              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => Digestive(),
              //         ));
              //   },
              //   child: Container(
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: const [
              //         ImageIcon(
              //           AssetImage('assets/digestive.png'),
              //           size: 40,
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Text(
              //           "نظام انہضام",
              //           style: TextStyle(fontSize: 17),
              //         ),
              //       ],
              //     ),
              //     decoration: BoxDecoration(
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.black.withOpacity(0.4),
              //           //color of shadow
              //           spreadRadius: 4,
              //           blurRadius: 10,
              //           offset: Offset(4, 4),
              //         ),
              //       ],
              //       borderRadius: BorderRadius.circular(30),
              //       color: Color(0xff00AFF0),
              //     ),
              //   ),
              // ),
              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => Respiratory(),
              //         ));
              //   },
              //   child: Container(
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: const [
              //         ImageIcon(
              //           AssetImage('assets/respiratory.png'),
              //           size: 40,
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Text(
              //           "نظام تنفس",
              //           style: TextStyle(fontSize: 17),
              //         ),
              //       ],
              //     ),
              //     decoration: BoxDecoration(
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.black.withOpacity(0.4),
              //           //color of shadow
              //           spreadRadius: 4,
              //           blurRadius: 10,
              //           offset: Offset(4, 4),
              //         ),
              //       ],
              //       borderRadius: BorderRadius.circular(30),
              //       color: const Color(0xff00AFF0),
              //     ),
              //   ),
              // ),
              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => Complete_Injury(),
              //         ));
              //   },
              //   child: Container(
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: const [
              //         ImageIcon(
              //           AssetImage('assets/compelete-injury.png'),
              //           size: 40,
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Text(
              //           "مکمل زخم ",
              //           style: TextStyle(fontSize: 17),
              //         ),
              //       ],
              //     ),
              //     decoration: BoxDecoration(
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.black.withOpacity(0.4),
              //           //color of shadow
              //           spreadRadius: 4,
              //           blurRadius: 10,
              //           offset: Offset(4, 4),
              //         ),
              //       ],
              //       borderRadius: BorderRadius.circular(30),
              //       color: Color(0xff00AFF0),
              //     ),
              //   ),
              // ),
              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => Incomplete_Injury(),
              //         ));
              //   },
              //   child: Container(
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: const [
              //         ImageIcon(
              //           AssetImage('assets/incomplete-injury.png'),
              //           size: 40,
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Text(
              //           "نامکمل زخم ",
              //           style: TextStyle(fontSize: 17),
              //         ),
              //       ],
              //     ),
              //     decoration: BoxDecoration(
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.black.withOpacity(0.4),
              //           //color of shadow
              //           spreadRadius: 4,
              //           blurRadius: 10,
              //           offset: Offset(4, 4),
              //         ),
              //       ],
              //       borderRadius: BorderRadius.circular(30),
              //       color: Color(0xff00AFF0),
              //     ),
              //   ),
              // ),
              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => Depression(),
              //         ));
              //   },
              //   child: Container(
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: const [
              //         ImageIcon(
              //           AssetImage('assets/depression.png'),
              //           size: 40,
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Text(
              //           "نفسیاتی بحالی ",
              //           style: TextStyle(fontSize: 17),
              //         ),
              //       ],
              //     ),
              //     decoration: BoxDecoration(
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.black.withOpacity(0.4),
              //           //color of shadow
              //           spreadRadius: 4,
              //           blurRadius: 10,
              //           offset: Offset(4, 4),
              //         ),
              //       ],
              //       borderRadius: BorderRadius.circular(30),
              //       color: Color(0xff00AFF0),
              //     ),
              //   ),
              // ),
              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => Sexual(),
              //         ));
              //   },
              //   child: Container(
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Container(
              //           height: 35,
              //           width: 35,
              //           child: const ImageIcon(
              //             AssetImage('assets/Sexual.png'),
              //             size: 40,
              //           ),
              //         ),
              //         const SizedBox(
              //           height: 10,
              //         ),
              //         const Text(
              //           "جنسی بحالی ",
              //           style: TextStyle(fontSize: 17),
              //         ),
              //       ],
              //     ),
              //     decoration: BoxDecoration(
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.black.withOpacity(0.4),
              //           //color of shadow
              //           spreadRadius: 4,
              //           blurRadius: 10,
              //           offset: Offset(4, 4),
              //         ),
              //       ],
              //       borderRadius: BorderRadius.circular(30),
              //       color: const Color(0xff00AFF0),
              //     ),
              //   ),
              // ),
              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => Disabilities(),
              //         ));
              //   },
              //   child: Container(
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: const [
              //         ImageIcon(
              //           AssetImage('assets/disability.png'),
              //           size: 40,
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Text(
              //           "معذوری",
              //           style: TextStyle(fontSize: 17),
              //         ),
              //       ],
              //     ),
              //     decoration: BoxDecoration(
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.black.withOpacity(0.4),
              //           //color of shadow
              //           spreadRadius: 4,
              //           blurRadius: 10,
              //           offset: Offset(4, 4),
              //         ),
              //       ],
              //       borderRadius: BorderRadius.circular(30),
              //       color: const Color(0xff00AFF0),
              //     ),
              //   ),
              // ),
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
  const GridItem({required this.imageUrl,required this.label,required this.data,Key? key}) : super(key: key);

  final String imageUrl;
  final String label;
  final List<CustomCardModel> data;

  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ListData(data: data,title: label,),
            ));
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
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
