import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shop/controllers/home.cl.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.name,
    required this.cost,
    this.width = 200,
    this.height = 200,
    this.url = 'https://c.mql5.com/1/224/scale_1200.png',
  }) : super(key: key);

  final String name;
  final String cost;
  final double width;
  final double height;
  final String url;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeCl>(
        init: HomeCl(),
        builder: (controller) {
          return InkWell(
              onTap: () {
                () {};
              },
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  color: Color.fromARGB(223, 255, 225, 0),
                  borderRadius: BorderRadius.circular(17.00),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(224, 0, 0, 0),
                        offset: Offset(0.0, 0.0),
                        blurRadius: 2.0),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                        width: width * 0.70,
                        height: height * 0.70,
                        child: const Image(
                          image: NetworkImage(
                            'https://c.mql5.com/1/224/scale_1200.png',
                          ),
                        )),
                    Text(name,
                        style: const TextStyle(
                            fontSize: 25.00,
                            color: Color.fromARGB(255, 75, 75, 75))),
                    Text(cost,
                        style: const TextStyle(
                            fontSize: 20.00,
                            color: Color.fromARGB(255, 126, 126, 126))),
                  ],
                ),
              ));
        });
  }
}
