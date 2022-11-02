import 'dart:ffi';

import 'package:http/http.dart' as http;

class ProductModel {
  ProductModel({
    required this.title,
    required this.cost,
    required this.image,
  });

  final String title;
  final double cost;
  final String image;

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      cost: json['price'].toDouble(),
      image: json['image'],
      title: json['title'],
    );
  }
}
