import 'dart:convert';

import 'package:travel_in/models/DetailedResevedResorsModel.dart';
import 'package:travel_in/models/reservation_model.dart';
import 'package:travel_in/models/reseved_resort_model.dart';
import 'package:travel_in/provider/base_provider.dart';

class ReservationProvider extends BaseProvider {
  DetailedResevedResorsModel detailedResevedResorsModel =
      DetailedResevedResorsModel();
  List<ResevedResorsModel> reservations = [];

  Future<bool> reserve(ReservationModel reservationModel) async {
    setLoading(true);
    final res = await api
        .post('https://lizard-well-boar.ngrok-free.app/api/resorts/reserve', {
      "resort_id": reservationModel.resortId,
      "start_date": "${reservationModel.startDate}",
      "end_date": "${reservationModel.endDate}",
      "adults": reservationModel.adults,
      "kids": reservationModel.kids,
      "method": "${reservationModel.method}",
      "amount": reservationModel.amount
    });
    if (res.statusCode == 200) {
      setLoading(false);
      return true;
    }
    print(res.body);
    setLoading(false);
    return false;
  }

  Future<bool> fetchReservations() async {
    setLoading(true);
    final res = await api
        .get('https://lizard-well-boar.ngrok-free.app/api/resort/reserve');
    if (res.statusCode == 200) {
      setLoading(false);
      print(res.body);
      var data = json.decode(res.body)['data'];
      print(data);
      reservations = data
          .map<ResevedResorsModel>((item) => ResevedResorsModel.fromJson(item))
          .toList();
      print(reservations.length);
      return true;
    }
    print(reservations.length);
    setLoading(false);
    return false;
  }

  Future<bool> updateReservation(ReservationModel reservationModel) async {
    setLoading(true);
    final res = await api.put('url', reservationModel.toJson());
    if (res.statusCode == 200) {
      setLoading(false);
      return true;
    }
    setLoading(false);
    return false;
  }

  Future<bool> reservationdetails(int id) async {
    setLoading(true);
    final res = await api.get(
        'https://lizard-well-boar.ngrok-free.app/api/user/reservations/$id');
    if (res.statusCode == 200) {
      var data = json.decode(res.body);
      detailedResevedResorsModel = DetailedResevedResorsModel.fromJson(data);
      setLoading(false);
      return true;
    }
    setLoading(false);
    return false;
  }
}
