import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jsondata_app/Screen/Model/cart_model.dart';

class CartProvider extends ChangeNotifier
{
  List<dynamic> json = [];
  List<CartModel> CartList = [];


  Future<void> CartJsonParsing()
  async {
    String jsonString = await rootBundle.loadString("assets/json/cart.json");
    json = jsonDecode(jsonString);
    CartList = json.map((e) => CartModel.fromJson(e)).toList();
    print(CartList.length);
    notifyListeners();
  }

  List<Color> colorList = [
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.pink,
    Colors.teal,
    Colors.purple,
    Colors.orange,
  ];
  int z=0;
  void RandomColor()
  {
    Random r = Random();
    z=r.nextInt(7);
  }
}