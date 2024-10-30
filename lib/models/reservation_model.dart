import 'dart:convert';

class ReservationModel {
  int? resortId;
  String? startDate;
  String? endDate;

  ReservationModel({
    this.resortId,
    this.startDate,
    this.endDate,
  });

  factory ReservationModel.fromRawJson(String str) =>
      ReservationModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ReservationModel.fromJson(Map<String, dynamic> json) =>
      ReservationModel(
        resortId: json["resort_id"],
        startDate: json["start_date"],
        endDate: json["end_date"],
      );

  Map<String, dynamic> toJson() => {
        "resort_id": resortId,
        "start_date": startDate,
        "end_date": endDate,
      };
}
