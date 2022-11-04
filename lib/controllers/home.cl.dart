import 'dart:convert';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:shop/models/product_model.dart';

class HomeCl extends GetxController {
  ProductModel? product;
  List<ProductModel> products = [];

  Future<void> fetchAlbum() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));

    if (response.statusCode < 300) {
      final List<dynamic> json = jsonDecode(response.body);

      for (final map in json) {
        final model = ProductModel.fromJson(map);
        products.add(model);
      }
      update();
    } else {
      throw Exception('Failed to load album');
    }
    update();
  }
}
