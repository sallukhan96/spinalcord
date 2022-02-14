import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinalcordinjury/lists/Blader.dart';
import 'package:flutter_spinalcordinjury/lists/Complete_injury.dart';
import 'package:flutter_spinalcordinjury/lists/Depression.dart';
import 'package:flutter_spinalcordinjury/lists/Digestive.dart';
import 'package:flutter_spinalcordinjury/lists/Disabilities.dart';
import 'package:flutter_spinalcordinjury/lists/Incomplete_Injury.dart';
import 'package:flutter_spinalcordinjury/lists/Mobility.dart';
import 'package:flutter_spinalcordinjury/lists/Respiratory.dart';
import 'package:flutter_spinalcordinjury/lists/Sexual.dart';
import 'package:flutter_spinalcordinjury/lists/Skin.dart';

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
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Mobility(),
                      ));
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ImageIcon(
                        AssetImage('assets/mobility.png'),
                        size: 40,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "حرکت کے افعال",
                        style: TextStyle(fontSize: 17),
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
                        offset: Offset(4, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xff00AFF0),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Blader(),
                      ));
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ImageIcon(
                        AssetImage('assets/bladder.png'),
                        size: 40,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "مثانہ کا انتظام",
                        style: TextStyle(fontSize: 17),
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
                        offset: Offset(4, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff00AFF0),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Skin(),
                      ));
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ImageIcon(
                        AssetImage('assets/skin.png'),
                        size: 40,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "جلد کی حفاظت ",
                        style: TextStyle(fontSize: 17),
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
                        offset: Offset(4, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff00AFF0),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Digestive(),
                      ));
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ImageIcon(
                        AssetImage('assets/digestive.png'),
                        size: 40,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "نظام انہضام",
                        style: TextStyle(fontSize: 17),
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
                        offset: Offset(4, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff00AFF0),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Respiratory(),
                      ));
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ImageIcon(
                        AssetImage('assets/respiratory.png'),
                        size: 40,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "نظام تنفس",
                        style: TextStyle(fontSize: 17),
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
                        offset: Offset(4, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xff00AFF0),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Complete_Injury(),
                      ));
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ImageIcon(
                        AssetImage('assets/compelete-injury.png'),
                        size: 40,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "مکمل زخم ",
                        style: TextStyle(fontSize: 17),
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
                        offset: Offset(4, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff00AFF0),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Incomplete_Injury(),
                      ));
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ImageIcon(
                        AssetImage('assets/incomplete-injury.png'),
                        size: 40,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "نامکمل زخم ",
                        style: TextStyle(fontSize: 17),
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
                        offset: Offset(4, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff00AFF0),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Depression(),
                      ));
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ImageIcon(
                        AssetImage('assets/depression.png'),
                        size: 40,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "نفسیاتی بحالی ",
                        style: TextStyle(fontSize: 17),
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
                        offset: Offset(4, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff00AFF0),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sexual(),
                      ));
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        child: const ImageIcon(
                          AssetImage('assets/Sexual.png'),
                          size: 40,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "جنسی بحالی ",
                        style: TextStyle(fontSize: 17),
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
                        offset: Offset(4, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xff00AFF0),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Disabilities(),
                      ));
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ImageIcon(
                        AssetImage('assets/disability.png'),
                        size: 40,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "معذوری",
                        style: TextStyle(fontSize: 17),
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
                        offset: Offset(4, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xff00AFF0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
