import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalizationProvider with ChangeNotifier{
String language = "ar";

getLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    language = prefs.getString("customlanguage") ?? "ar";
}

storeLanguage(langCode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("customlanguage", langCode);
    getLanguage();
   notifyListeners();

}

}