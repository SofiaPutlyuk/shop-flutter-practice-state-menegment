import 'package:flutter/material.dart';
import '../models/product.dart';
import '../services/dio_service.dart';
class ProductProvider extends ChangeNotifier {
  final DioService dioService = DioService();
  List <Product> products = [];
  List <Product> favourites = [];
  bool isLoading = false;
  String?  error;
  Future<void> fetchProduct() async {
    try {
      isLoading = true;
      error = null;
      notifyListeners();
      final data = await dioService.getProducts();
      products = data.map((e) => Product.fromJson(e)).toList();
    } catch(e) {
      error = e.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

void toggleFavourite(Product product){
  if(favourites.contains(product)){
    products.remove(product);
  } else {
    favourites.add(product);
  }
}
bool isFavourite(Product product) {
  return favourites.contains(product);
}
}