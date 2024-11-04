import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
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
    print(jsonEncode(body));

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

  Future<http.Response> delete(String url,Map? body) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var token = pref.getString('token') ?? 'NO Token found';

    print("Token is $token");
    return await http.delete(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token'
    },
    body: jsonEncode(body),
    
    );
  }

  Future<http.Response> upload(File file, String url) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.headers.addAll({
      "Accept": 'application/json',
      'Content-Type': 'application/json',
      "Authorization": "Bearer $token"
    });
    request.files.add(await http.MultipartFile.fromPath('img', file.path));

    var streamedResponse = await request.send();
    var response = await http.Response.fromStream(streamedResponse);

    if (kDebugMode) {
      print("UPLOAD URL : $url");
      print("UPLOAD STATUS CODE : ${response.statusCode}");
      print("UPLOAD RESPONSE : ${response.body}");
    }

    return response;
  }
}
