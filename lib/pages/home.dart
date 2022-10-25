import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shop/controllers/home.cl.dart';
import 'package:shop/widgets/card.widget.dart';

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
          body: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 4,
              children: const <Widget>[
                CardWidget(name: "hello", cost: "i don't know"),
                CardWidget(name: "Hello", cost: "i don't know"),
                CardWidget(name: "HEllo", cost: "i don't know"),
                CardWidget(name: "HELlo", cost: "i don't know"),
                CardWidget(name: "HELLo", cost: "i don't know"),
                CardWidget(name: "HELLO", cost: "i don't know"),
                CardWidget(name: "hello", cost: "i don't know"),
                CardWidget(name: "hello", cost: "i don't know"),
                CardWidget(name: "hello", cost: "i don't know"),
                CardWidget(name: "hello", cost: "i don't know"),
                CardWidget(name: "hello", cost: "i don't know"),
                CardWidget(name: "hello", cost: "i don't know"),
                CardWidget(name: "hello", cost: "i don't know"),
                CardWidget(name: "hello", cost: "i don't know"),
                CardWidget(name: "hello", cost: "i don't know"),
                CardWidget(name: "hello", cost: "i don't know"),
              ]),
        );
      },
    );
  }
}
