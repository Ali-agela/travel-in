import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Api {
  Future<http.Response> get(
    String url,
  ) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var token = pref.getString('token') ?? '';
    print("Token is $token");
    return await http.get(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'
      },
    );
  }

  Future<http.Response> post(String url, Map<String, dynamic> body) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var token = pref.getString('token') ?? '';
    print("Token is $token");

    return await http.post(Uri.parse(url), body: jsonEncode(body), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token'
    });
  }

  Future<http.Response> put(String url, Map<String, dynamic> body) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var token = pref.getString('token') ?? ' NO Token found ';
    print("Token is $token");
    return await http.put(Uri.parse(url), body: jsonEncode(body), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token'
    });
  }

  Future<http.Response> delete(String url) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var token = pref.getString('token') ?? 'NO Token found';

    print("Token is $token");
    return await http.delete(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token'
    });
  }
}
