import 'dart:ffi';

import 'package:http/http.dart' as http;

class ProductModel {
  ProductModel({
    required this.title,
    required this.price,
    required this.image,
  });

  final String title;
  final double price;
  final String image;

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      price: json['price'].toDouble(),
      image: json['image'],
      title: json['title'],
    );
  }
}
