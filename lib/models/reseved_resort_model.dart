import 'dart:convert';

class ResevedResorsModel {
  final int id;
  final String resevationStatus;
  final String resort;
  final int resortId;
  final String resortLocation;
  final DateTime startDate;
  final DateTime endDate;
  final String imageUrl;

  ResevedResorsModel({
    required this.id,
    required this.resevationStatus,
    required this.resort,
    required this.resortId,
    required this.resortLocation,
    required this.startDate,
    required this.endDate,
    required this.imageUrl,
  });

  factory ResevedResorsModel.fromRawJson(String str) =>
      ResevedResorsModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResevedResorsModel.fromJson(Map<String, dynamic> json) =>
      ResevedResorsModel(
        id: json["id"],
        resevationStatus: json["resevation_status"],
        resort: json["resort"],
        resortId: json["resort_id"],
        resortLocation: json["resort_location"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        imageUrl: json["image_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "resevation_status": resevationStatus,
        "resort": resort,
        "resort_id": resortId,
        "resort_location": resortLocation,
        "start_date":
            "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
        "end_date":
            "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
        "image_url": imageUrl,
      };
}
