import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FireBase extends StatelessWidget {
  const FireBase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => FirebaseFirestore.instance
            .collection('texting')
            .add({"timestamp": Timestamp.fromDate(DateTime.now())}),
        child: Icon(Icons.add),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('testing').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) return SizedBox.shrink();
          return ListView.builder(
              itemCount: snapshot.data?.docs.length,
              itemBuilder: (BuildContext context, int index) {
                final docData = snapshot.data?.docs[index].data();
                final dateTime = (docData as Timestamp).toDate;
                print('doocdata${docData}');
                return ListTile(
                  title: Text(dateTime.toString()),
                );
              });
        },
      ),
    );
  }
}
