import 'dart:convert';

import 'package:travel_in/models/ResortOfferModel.dart';
import 'package:travel_in/provider/base_provider.dart';

class FavoriteProvider extends BaseProvider {
  List<ResortOfferModel> favoriteOffers = [];

  Future<bool> addFavorite(ResortOfferModel offer) async {
    setLoading(true);
    final res = await api.post(
        'https://lizard-well-boar.ngrok-free.app/api/resort/favorite',
        {"resort_id": "${offer.id}"});
    if (res.statusCode == 200) {
      favoriteOffers.add(offer);
      print(favoriteOffers.length);
      setLoading(false);
      return true;
    }
    setLoading(false);
    return false;
  }

  Future<bool> fetchFavorites() async {
    setLoading(true);
    final res = await api
        .get('https://lizard-well-boar.ngrok-free.app/api/resort/favorite');
    if (res.statusCode == 200) {
      var data = json.decode(res.body)['data'];
      print(data);
      favoriteOffers = List<ResortOfferModel>.from(
          data.map((item) => ResortOfferModel.fromJson(item)).toList());
      setLoading(false);

      return true;
    }
    setLoading(false);
    return false;
  }

  Future<bool> removeFavorite(ResortOfferModel offer) async {
    setLoading(true);
    final res = await api.delete(
        'https://lizard-well-boar.ngrok-free.app/api/resort/favorite',
        {"resort_id": "${offer.id}"});
    if (res.statusCode == 200) {
      favoriteOffers.remove(offer);
      setLoading(false);
      return true;
    }
    setLoading(false);
    return false;
  }

  bool isFavorite(ResortOfferModel offer) {
    for (var favorite in favoriteOffers) {
      if (favorite.id == offer.id) {
        return true;
      }
    }
    return false;
  }
}
