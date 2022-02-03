import 'package:flutter/material.dart';
import 'package:flutter_spinalcordinjury/LoginPage.dart';

class CompanyStocks {
  String name;

  CompanyStocks({
    required this.name,
  });
}

class Skin extends StatefulWidget {
  @override
  _MyAppState createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State {
  List stocksList = [
    CompanyStocks(name: "SKin 1"),
    CompanyStocks(name: "Skin 2"),
    CompanyStocks(name: "Skin 3"),
    CompanyStocks(name: "Skin 4"),
    CompanyStocks(name: "Skin 5"),
    CompanyStocks(name: "Skin 6"),
    CompanyStocks(name: "Skin 7"),
    CompanyStocks(name: "Skin 8"),
    CompanyStocks(name: "Skin 9"),
    CompanyStocks(name: "Skin 10"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
            "Skin Managment",
          ),
          centerTitle: true,
          backgroundColor: Color(0xff00AFF0),
        ),
        body: ListView.builder(
          itemCount: stocksList.length,
          itemBuilder: (context, index) {
            return Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Color(0xff00AFF0),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: ListTile(
                      title: Text(
                        stocksList[index].name,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      leading: CircleAvatar(
                        radius: 25,
                        child: Text(
                          stocksList[index].name[0],
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                      trailing: Icon(Icons.navigate_next),
                      iconColor: Colors.white,
                      // onTap: () {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) => Mobility(),
                      //       ));
                      // },
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
