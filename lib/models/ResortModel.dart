import 'dart:convert';

class ResortModel {
  int id;
  String name;
  String phone;
  String email;
  String location;
  String description;
  String phoneNumbers;
  int forFamilies;
  dynamic rating;
  DateTime createdAt;
  DateTime updatedAt;
  List<Image> images;

  ResortModel({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.location,
    required this.description,
    required this.phoneNumbers,
    required this.forFamilies,
    required this.rating,
    required this.createdAt,
    required this.updatedAt,
    required this.images,
  });

  factory ResortModel.fromRawJson(String str) =>
      ResortModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResortModel.fromJson(Map<String, dynamic> json) => ResortModel(
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
        email: json["email"],
        location: json["location"],
        description: json["description"],
        phoneNumbers: json["phone_numbers"],
        forFamilies: json["for_families"],
        rating: json["rating"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone": phone,
        "email": email,
        "location": location,
        "description": description,
        "phone_numbers": phoneNumbers,
        "for_families": forFamilies,
        "rating": rating,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
      };
}

class Image {
  int id;
  String imageUrl;
  int adminId;
  DateTime createdAt;
  DateTime updatedAt;

  Image({
    required this.id,
    required this.imageUrl,
    required this.adminId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Image.fromRawJson(String str) => Image.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        imageUrl: json["image_url"],
        adminId: json["admin_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image_url": imageUrl,
        "admin_id": adminId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
