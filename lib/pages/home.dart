import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shop/controllers/home.cl.dart';
import 'package:shop/models/product_model.dart';
import 'package:shop/widgets/card.widget.dart';
import 'package:http/http.dart' as http;

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeCl(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(223, 255, 213, 121),
          appBar: AppBar(
              title: const Text("Shoper"),
              backgroundColor: Color.fromARGB(223, 255, 219, 141)),
          body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 40, mainAxisSpacing: 40),
            primary: false,
            itemCount: controller.products.length,
            itemBuilder: (_, index) {
              return CardWidget(
                  name: controller.products[index].title,
                  cost: controller.products[index].cost);
            },
          ),
        );
      },
    );
  }
}
