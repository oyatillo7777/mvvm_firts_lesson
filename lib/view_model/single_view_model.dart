import 'package:flutter/foundation.dart';

import '../data/models/product_model.dart';
import '../service/api_service.dart';

class SingleViewModel extends ChangeNotifier {
  List product = [];
  bool isLoading = false;

  void getAllSingle(int id) async {
    changeLoading();
    product = await ApiService().getSingleProducts(id);
    changeLoading();
  }

  void changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }
}
