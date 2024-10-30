import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_in/provider/base_provider.dart';

class AuthenticationProvider extends BaseProvider {
  Future<bool> logIn(Map<String, dynamic> body) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setLoading(true);
    var res = await api.post(
        'https://lizard-well-boar.ngrok-free.app/api/login', body);
    if (res.statusCode == 200) {
      pref.setString('token', json.decode(res.body)['access_token']);
      setLoading(false);
      return true;
    }
    setLoading(false);
    return false;
  }

  Future<bool> signUp(Map<String, dynamic> body) async {
    setLoading(true);
    var res = await api.post(
        'https://lizard-well-boar.ngrok-free.app/api/register', body);
    if (res.statusCode == 200) {
      setLoading(false);
      return true;
    }
    setLoading(false);
    return false;
  }
}
