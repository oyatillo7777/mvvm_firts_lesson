import 'package:flutter/foundation.dart';

import '../data/models/product_model.dart';
import '../service/api_service.dart';

class ProductsViewModel extends ChangeNotifier {
  List product = [];
  bool isLoading = false;

  void getAllProducts() async {
    changeLoading();
    product = await ApiService().getAllProducts();
    changeLoading();
  }

  void changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }
}
