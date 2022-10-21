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
          backgroundColor: Color.fromARGB(223, 255, 213, 121),
          appBar: AppBar(title: Text("Shoper")),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.10,
                  color: Color.fromARGB(223, 252, 196, 75),
                  child: ListView(
                      padding: const EdgeInsets.all(8),
                      scrollDirection: Axis.horizontal,
                      children: const [
                        Text("0"),
                        Text("1"),
                        Text("2"),
                        Text("3"),
                        Text("4"),
                        Text("5"),
                        Text("6"),
                        Text("7"),
                        Text("8"),
                        Text("9")
                      ]),
                ),
                CustomScrollView(
                  primary: false,
                  slivers: <Widget>[
                    SliverPadding(
                      padding: const EdgeInsets.all(20),
                      sliver: SliverGrid.count(
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 2,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.green[100],
                            child:
                                const Text("He'd have you all unravel at the"),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.green[200],
                            child: const Text('Heed not the rabble'),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.green[300],
                            child: const Text('Sound of screams but the'),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.green[400],
                            child: const Text('Who scream'),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.green[500],
                            child: const Text('Revolution is coming...'),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.green[600],
                            child: const Text('Revolution, they...'),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ]),
        );
      },
    );
  }
}
