import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinalcordinjury/LoginPage.dart';
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
        body: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(25),
              sliver: SliverGrid.count(
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
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
                            AssetImage('assets/mobility.png'),size: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Mobility",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "Activity",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
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
                            AssetImage('assets/bladder.png'),size: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Blader",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "Managment",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
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
                            AssetImage('assets/skin.png'),size: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Skin",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "Managment",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
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
                            AssetImage('assets/digestive.png'),size: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Digestive",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "System",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
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
                            AssetImage('assets/respiratory.png'),size: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Respiratory",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "System",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
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
                            AssetImage('assets/compelete-injury.png'),size: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Complete",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "Injury",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
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
                            AssetImage('assets/incomplete-injury.png'),size: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Incomplete",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "Injury",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
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
                            AssetImage('assets/depression.png'),size: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Depression",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
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
                        children:   [

                          Container(
                            height: 35,
                            width: 35,
                            child:  ImageIcon(
                              AssetImage('assets/Sexual.png'),size: 40,
                            ),

                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "sexual",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "rehibilitation",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
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
                            builder: (context) => Disabilities(),
                          ));
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          ImageIcon(
                            AssetImage('assets/disability.png'),size: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Disabilities",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff00AFF0),
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
