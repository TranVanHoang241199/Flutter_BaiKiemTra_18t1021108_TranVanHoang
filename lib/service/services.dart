import 'dart:convert';
import 'package:flutter_newspaper/model/tesla.dart';
import 'package:http/http.dart' as http;

class Service {
  Future<Tesla> fetchDataTesla(dynamic s) async {
    String url = s == null
        ? "https://newsapi.org/v2/everything?q=tesla&from=2021-10-16&sortBy=publishedAt&apiKey=3e45ffa92df740c0960ec4f85c137887"
        : s;
    var reponse = await http.get(Uri.parse(url));
    if (reponse.statusCode == 200) {
      var jsonData = json.decode(reponse.body);
      print(jsonData);
      Tesla tl = TeslaFromJson(reponse.body);
      print(tl);
      return tl;
    } else {
      return throw Exception('Không có dữ liệu ${reponse.statusCode}');
    }
  }
}
