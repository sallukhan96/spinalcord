
import 'dart:convert';

class UserModel {
  UserModel({
    this.id,
    this.name,
    this.email,
    this.password,
    this.phone,
  });

  final String? id;
  final String? name;
  final String? email;
  final String? password;
  final String? phone;

  UserModel copyWith({
    String? id,
    String? name,
    String? email,
    String? password,
    String? phone,
  }) =>
      UserModel(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        password: password ?? this.password,
        phone: phone ?? this.phone,
      );

  factory UserModel.fromJson(String str) => UserModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    password: json["password"],
    phone: json["phone"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "email": email,
    "password": password,
    "phone": phone,
  };
}

class Collections{
  static const registered_user='registered_users';
}