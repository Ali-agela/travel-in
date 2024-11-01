import 'dart:convert';

class DetailedResevedResorsModel {
   int? id;
   int? userId;
   int? resortId;
   DateTime? startDate;
   DateTime? endDate;
   String? status;
   String? method;
   int? amount;
   int? days;
   int? adults;
   int? kids;
   DateTime? createdAt;
   DateTime? updatedAt;

  DetailedResevedResorsModel({
     this.id,
     this.userId,
     this.resortId,
     this.startDate,
     this.endDate,
     this.status,
     this.method,
     this.amount,
     this.days,
     this.adults,
     this.kids,
     this.createdAt,
     this.updatedAt,
  });

  factory DetailedResevedResorsModel.fromRawJson(String str) =>
      DetailedResevedResorsModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DetailedResevedResorsModel.fromJson(Map<String, dynamic> json) =>
      DetailedResevedResorsModel(
        id: json["id"],
        userId: json["user_id"],
        resortId: json["resort_id"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        status: json["status"],
        method: json["method"],
        amount: json["amount"],
        days: json["days"],
        adults: json["adults"],
        kids: json["kids"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "resort_id": resortId,
        "start_date":
            "${startDate!.year.toString().padLeft(4, '0')}-${startDate!.month.toString().padLeft(2, '0')}-${startDate!.day.toString().padLeft(2, '0')}",
        "end_date":
            "${endDate!.year.toString().padLeft(4, '0')}-${endDate!.month.toString().padLeft(2, '0')}-${endDate!.day.toString().padLeft(2, '0')}",
        "status": status,
        "method": method,
        "amount": amount,
        "days": days,
        "adults": adults,
        "kids": kids,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
      };
}
