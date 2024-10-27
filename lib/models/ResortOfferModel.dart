import 'dart:convert';

class ResortOfferModel {
  int id;
  String name;
  String location;
  String description;
  int adminId;
  DateTime createdAt;
  DateTime updatedAt;
  List<Image> images;
  List<Spasification> spasifications;
  List<Reservation> reservations;

  ResortOfferModel({
    required this.id,
    required this.name,
    required this.location,
    required this.description,
    required this.adminId,
    required this.createdAt,
    required this.updatedAt,
    required this.images,
    required this.spasifications,
    required this.reservations,
  });

  factory ResortOfferModel.fromRawJson(String str) =>
      ResortOfferModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResortOfferModel.fromJson(Map<String, dynamic> json) =>
      ResortOfferModel(
        id: json["id"],
        name: json["name"],
        location: json["location"],
        description: json["description"],
        adminId: json["admin_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        spasifications: List<Spasification>.from(
            json["spasifications"].map((x) => Spasification.fromJson(x))),
        reservations: List<Reservation>.from(
            json["reservations"].map((x) => Reservation.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "location": location,
        "description": description,
        "admin_id": adminId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "spasifications":
            List<dynamic>.from(spasifications.map((x) => x.toJson())),
        "reservations": List<dynamic>.from(reservations.map((x) => x.toJson())),
      };
}

class Image {
  int id;
  String imageUrl;
  int resortId;
  DateTime createdAt;
  DateTime updatedAt;

  Image({
    required this.id,
    required this.imageUrl,
    required this.resortId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Image.fromRawJson(String str) => Image.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        imageUrl: json["image_url"],
        resortId: json["resort_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image_url": imageUrl,
        "resort_id": resortId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class Reservation {
  int id;
  int resortId;
  int userId;
  DateTime date;
  String status;
  DateTime createdAt;
  DateTime updatedAt;

  Reservation({
    required this.id,
    required this.resortId,
    required this.userId,
    required this.date,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Reservation.fromRawJson(String str) =>
      Reservation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Reservation.fromJson(Map<String, dynamic> json) => Reservation(
        id: json["id"],
        resortId: json["resort_id"],
        userId: json["user_id"],
        date: DateTime.parse(json["date"]),
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "resort_id": resortId,
        "user_id": userId,
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class Spasification {
  int id;
  String spasification;
  int resortId;
  dynamic rating;
  DateTime createdAt;
  DateTime updatedAt;

  Spasification({
    required this.id,
    required this.spasification,
    required this.resortId,
    required this.rating,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Spasification.fromRawJson(String str) =>
      Spasification.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Spasification.fromJson(Map<String, dynamic> json) => Spasification(
        id: json["id"],
        spasification: json["spasification"],
        resortId: json["resort_id"],
        rating: json["rating"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "spasification": spasification,
        "resort_id": resortId,
        "rating": rating,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
