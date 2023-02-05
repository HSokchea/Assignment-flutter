import 'dart:convert';
import 'package:coffee/coffee/models/cofee_model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class CoffeeService {
  static Future<List<CoffeeModel>> getData() async {
    const url = "https://api.sampleapis.com/coffee/hot";
    try {
      http.Response response = await http.get(Uri.parse(url));
      return compute(_getList, response.body);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

List<CoffeeModel> _getList(String data) {
  List list = json.decode(data);
  List<CoffeeModel> coffeeList = [];
  for (int index = 0; index < list.length; index++) {
    CoffeeModel coffee = CoffeeModel.fromJson(list[index]);
    coffeeList.add(coffee);
  }
  return coffeeList;
}
