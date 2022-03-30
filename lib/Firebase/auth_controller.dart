import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinalcordinjury/models/userModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController{

static const authentications=  'authentications';

///This will get login data from local storage
static Future<UserModel> getLocal()async{
  final prefs = await SharedPreferences.getInstance();
  String? localData=prefs.getString(AuthController.authentications);
  UserModel user=UserModel.fromJson(localData!);
  return user;
}

static void saveLocal(data)async{
  final prefs = await SharedPreferences.getInstance();
  prefs.setString(AuthController.authentications,data);

}

static Future<List<UserModel>> signIn({email,pass}) async {
  CollectionReference ref =
  FirebaseFirestore.instance.collection(Collections.registered_user);

  List<UserModel> _users=  await ref
      .where('email', isEqualTo: email)
      .where('password', isEqualTo: pass)
      .get()
      .then((QuerySnapshot querySnapshot) => querySnapshot.docs
      .map((e) => UserModel.fromJson(json.encode(e.data())))
      .toList());
  if (kDebugMode) {
    print('Checking...');
  }
  _users.length>0?
  AuthController.saveLocal(_users[0].toJson()):null;
  return _users;
}

static Future<DocumentReference> signUp(BuildContext context,
    {required String collection, required Map<String, Object?> data}) {
  CollectionReference users =
  FirebaseFirestore.instance.collection(collection);

  // Call the user's CollectionReference to add a new user
  return users.add(data).then((value) {
    users.doc(value.id).update({'id': value.id});
    ///save in Local storage
    AuthController.saveLocal(jsonEncode(data));
    print("Successfully Signed");
    return value;
  }).catchError((error) {
    print('SignUp Failed');
  });
}
}