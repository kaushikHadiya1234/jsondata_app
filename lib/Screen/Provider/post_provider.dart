import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jsondata_app/Screen/Model/user_model.dart';

class PostProvider extends ChangeNotifier
{
  List<dynamic> jsonList = [];

  List<UserModel> UserList = [];

  Future<void> PostjsonParsing()
  async {
    String jsonString = await rootBundle.loadString("assets/json/post.json");
    jsonList = jsonDecode(jsonString);
    notifyListeners();
    print(jsonList);
  }

  Future<void> Userjsondata()
  async {
    String jsonString = await rootBundle.loadString("assets/json/user.json");
    jsonList = jsonDecode(jsonString);
    UserList = jsonList.map((e) => UserModel.fromJson(e)).toList();
    notifyListeners();
    print(jsonList);
  }
}