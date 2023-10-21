import 'package:dio/dio.dart';

import '../data/models/product_model.dart';

class ApiService {
  Future getAllProducts() async {
    Dio dio = Dio();
    Response response = await dio.get("https://fakestoreapi.com/products");
    if (response.statusCode == 200) {
      print("data keldi");
      List products =
          (response.data as List).map((e) => ProductModel.fromJson(e)).toList();
      return products;
    } else {
      throw Exception("Failed to load products");
    }
  }
  Future getSingleProducts(int id) async {
    Dio dio = Dio();
    Response response = await dio.get("https://fakestoreapi.com/products");
    if (response.statusCode == 200) {
      print("single keldi");
      List products =
          (response.data as List).map((e) => ProductModel.fromJson(e)).toList();
      return products;
    } else {
      throw Exception("Failed to load products");
    }
  }
}
