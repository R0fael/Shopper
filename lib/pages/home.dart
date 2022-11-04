import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shop/controllers/home.cl.dart';
import 'package:shop/widgets/card.widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeCl>(
      init: HomeCl(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(223, 255, 213, 121),
          appBar: AppBar(
              title: const Text("Shoper"),
              backgroundColor: const Color.fromARGB(223, 255, 219, 141)),
          body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 40, mainAxisSpacing: 40),
            primary: false,
            itemCount: controller.products.length,
            itemBuilder: (_, index) {
              return CardWidget(
                model: controller.products[index],
              );
            },
          ),
        );
      },
    );
  }
}
