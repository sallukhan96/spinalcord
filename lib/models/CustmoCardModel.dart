import 'dart:convert';

class CustomCardModel {
  CustomCardModel({
    this.heading,
    this.paragraph,
    this.imageUrl,
  });

  final String? heading;
  final String? paragraph;
  final String? imageUrl;

  factory CustomCardModel.fromJson(String str) => CustomCardModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CustomCardModel.fromMap(Map<String, dynamic> json) => CustomCardModel(
    heading: json["heading"],
    paragraph: json["paragraph"],
    imageUrl: json["imageUrl"],
  );

  Map<String, dynamic> toMap() => {
    "heading": heading,
    "paragraph": paragraph,
    "imageUrl": imageUrl,
  };
}
