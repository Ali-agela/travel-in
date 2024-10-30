import 'dart:convert';
import 'package:travel_in/models/ResortModel.dart' as resort_model;

class ResortOfferModel {
  final int id;
  final String name;
  final String location;
  final String description;
  final int adminId;
  final String numberOfRooms;
  final String pricePerRoom;
  final String numberOfPoeple;
  final DateTime createdAt;
  final DateTime updatedAt;
  final List<resort_model.Image> images;
  final List<Spasification> spasifications;
  final List<Reservation> reservations;

  ResortOfferModel({
    required this.id,
    required this.name,
    required this.location,
    required this.description,
    required this.adminId,
    required this.numberOfRooms,
    required this.pricePerRoom,
    required this.numberOfPoeple,
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
        numberOfRooms: json["number_of_rooms"],
        pricePerRoom: json["price_per_room"],
        numberOfPoeple: json["number_of_poeple"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        images: List<resort_model.Image>.from(
            json["images"].map((x) => resort_model.Image.fromJson(x))),
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
        "number_of_rooms": numberOfRooms,
        "price_per_room": pricePerRoom,
        "number_of_poeple": numberOfPoeple,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "spasifications":
            List<dynamic>.from(spasifications.map((x) => x.toJson())),
        "reservations": List<dynamic>.from(reservations.map((x) => x.toJson())),
      };
}

class Reservation {
  final int id;
  final int userId;
  final int resortId;
  final DateTime startDate;
  final DateTime endDate;
  final String status;
  final DateTime createdAt;
  final DateTime updatedAt;

  Reservation({
    required this.id,
    required this.userId,
    required this.resortId,
    required this.startDate,
    required this.endDate,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Reservation.fromRawJson(String str) =>
      Reservation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Reservation.fromJson(Map<String, dynamic> json) => Reservation(
        id: json["id"],
        userId: json["user_id"],
        resortId: json["resort_id"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "resort_id": resortId,
        "start_date":
            "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
        "end_date":
            "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class Spasification {
  final int id;
  final String spasification;
  final int resortId;
  final dynamic rating;
  final DateTime createdAt;
  final DateTime updatedAt;

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
