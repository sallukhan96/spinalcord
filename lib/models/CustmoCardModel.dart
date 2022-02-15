
import 'dart:convert';

class CustomCardModel {
  CustomCardModel({
    this.heading,
    this.paragraph,
    this.imageUrl,
  });

  final String? heading;
  final List<Paragraph>? paragraph;
  final String? imageUrl;

  factory CustomCardModel.fromJson(String str) => CustomCardModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CustomCardModel.fromMap(Map<String, dynamic> json) => CustomCardModel(
    heading: json["heading"],
    paragraph: List<Paragraph>.from(json["paragraph"].map((x) => Paragraph.fromMap(x))),
    imageUrl: json["imageUrl"],
  );

  Map<String, dynamic> toMap() => {
    "heading": heading,
    "paragraph": List<dynamic>.from(paragraph!.map((x) => x.toMap())),
    "imageUrl": imageUrl,
  };
}




class Paragraph {
  Paragraph({
    this.heading,
    this.paragraph,
  });

  final String? heading;
  final String? paragraph;

  factory Paragraph.fromJson(String str) => Paragraph.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Paragraph.fromMap(Map<String, dynamic> json) => Paragraph(
    heading: json["heading"],
    paragraph: json["paragraph"],
  );

  Map<String, dynamic> toMap() => {
    "heading": heading,
    "paragraph": paragraph,
  };
}
