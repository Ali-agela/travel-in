import 'package:flutter/cupertino.dart';
import 'package:travel_in/service/api.dart';

class BaseProvider with ChangeNotifier{
  bool isLoading = false;
  bool failed = false;
  Api api = Api();
  void setLoading(bool value){
    isLoading = value;
    notifyListeners();
  }
  void setFailed(bool value){
    failed = value;
    notifyListeners();
  }

}