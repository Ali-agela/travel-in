import 'dart:convert';
import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_in/models/user_model.dart';
import 'package:travel_in/provider/base_provider.dart';

class AuthenticationProvider extends BaseProvider {
  UserModel? currentUser;
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
      currentUser = UserModel.fromJson(json.decode(res.body)['data']);
      setLoading(false);
      return true;
    }
    setLoading(false);
    return false;
  }

  Future<bool> getMe() async {
    setLoading(true);
    final res =
        await api.get('https://lizard-well-boar.ngrok-free.app/api/user');
    if (res.statusCode == 200) {
      currentUser = UserModel.fromJson(json.decode(res.body)['data']);
      setLoading(false);
      return true;
    }
    setLoading(false);
    return false;
  }

  Future<bool> updateUserPhoto(File file) async {
    setLoading(true);

    await api
        .upload(file, "https://lizard-well-boar.ngrok-free.app/api/upload/user")
        .then((res) {
      if (res.statusCode == 200) {
        getMe();
        setLoading(false);
        return true;
      }
    });
    setLoading(false);
    return false;
  }

  updateUserData(Map<String, dynamic> body) async {
    setLoading(true);
    final res = await api.put(
        'https://lizard-well-boar.ngrok-free.app/api/user', body);
    if (res.statusCode == 200) {
      getMe();
      setLoading(false);
      return true;
    }
    setLoading(false);
    return false;
  }
}
