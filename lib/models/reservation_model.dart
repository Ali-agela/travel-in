import 'dart:convert';

class ReservationModel {
  int? resortId;
  DateTime? startDate;
  DateTime? endDate;
  int adults;
  int kids;
  String? method;
  int? amount;
  int? days;

  ReservationModel({
    this.resortId,
    this.startDate,
    this.endDate,
    this.adults = 1,
    this.kids = 0,
    this.method,
    this.amount,
    this.days,
  });

  factory ReservationModel.fromRawJson(String str) =>
      ReservationModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ReservationModel.fromJson(Map<String, dynamic> json) =>
      ReservationModel(
        resortId: json["resort_id"],
        startDate: json["start_date"] == null
            ? null
            : DateTime.parse(json["start_date"]),
        endDate:
            json["end_date"] == null ? null : DateTime.parse(json["end_date"]),
        adults: json["adults"],
        kids: json["kids"],
        method: json["method"],
        amount: json["amount"],
      );

  Map<String, dynamic> toJson() => {
        "resort_id": resortId,
        "start_date":
            "${startDate!.year.toString().padLeft(4, '0')}-${startDate!.month.toString().padLeft(2, '0')}-${startDate!.day.toString().padLeft(2, '0')}",
        "end_date":
            "${endDate!.year.toString().padLeft(4, '0')}-${endDate!.month.toString().padLeft(2, '0')}-${endDate!.day.toString().padLeft(2, '0')}",
        "adults": adults,
        "kids": kids,
        "method": method,
        "amount": amount,
      };
}
