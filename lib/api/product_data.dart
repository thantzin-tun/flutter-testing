import 'dart:convert';

import 'package:first_flutter_project/constants/baseUrl.dart';
import 'package:first_flutter_project/model/product/product_data.dart';
import 'package:http/http.dart' as http;

class ProductApiCaller {
  Future<List<Product>> getProduct() async {
    // const String baseUrl = "https://fakestoreapi.com/products";
    var response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      List<dynamic> productList = json.decode(response.body);
      List<Product> products =
          productList.map((item) => Product.fromJson(item)).toList();
      return products;
    } else {
      throw Exception('Failed to load fruits');
    }
  }
}