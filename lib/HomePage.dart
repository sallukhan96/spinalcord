import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinalcordinjury/HomeOne.dart';
import 'package:flutter_spinalcordinjury/Homethree.dart';
import 'package:flutter_spinalcordinjury/HomeTwo.dart';
import 'package:flutter_spinalcordinjury/LoginPage.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List pages = [
    HomeOne(),
    HomeTwo(),
    HomeThree(),
  ];
  var selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  "",

                  ///text to be added
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  image: DecorationImage(
                      image: AssetImage("assets/images/8.jpg"),
                      fit: (BoxFit.cover))),
            ),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text("Back"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_page_outlined),
              title: const Text("About Us"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.power_settings_new_outlined),
              title: const Text("Logout"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff00AFF0),
        title: Text("اسپائنل کارڈ کی چوٹ "),
      ),

      body: pages.elementAt(selectedIndex),

      ///curve navigation bar
      bottomNavigationBar: CurvedNavigationBar(
        index: selectedIndex,
        height: 60.0,
        items: const <Widget>[
          SizedBox(
            height: 50,
            child: Icon(
              Icons.chat,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 40,
            child: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 40,
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ],
        color: Color(0xff00AFF0),

        // buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: const Duration(milliseconds: 50),
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
          print("sel : $selectedIndex");
        },
        letIndexChange: (index) => true,
      ), //destination screen
    );
  }
}
