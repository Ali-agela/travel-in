import 'dart:convert';

import 'package:travel_in/models/ResortOfferModel.dart';
import 'package:travel_in/provider/base_provider.dart';

class ResortsOfferProvider  extends BaseProvider{

  List<ResortOfferModel> offers = [];
  Future<void> getOffers(int id) async {
    print("Start");
    setLoading(true);
    var res =
        await api.get('https://lizard-well-boar.ngrok-free.app/api/resorts/$id');
    if (res.statusCode == 200) {
      var data = jsonDecode(res.body)['data'];
      print(res.body);

      offers =
          List<ResortOfferModel>.from(data.map((e) => ResortOfferModel.fromJson(e)));
      setLoading(false);
      print('offers fetched successfully ${offers.length}');
    } else {
      print('error while fetching offers');
      setFailed(true);
    }
    setLoading(false);
  }
}