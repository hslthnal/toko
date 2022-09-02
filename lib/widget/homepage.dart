import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_campus/widget/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: buildAppbar(),
        body: Body(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {

            
          },
          child: Icon(Icons.whatsapp_outlined),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
        leading: Icon(Icons.notes),
        centerTitle: true,
        title: Text("FoodShop"),
        backgroundColor: Colors.black,
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Icon(Icons.shopping_cart_outlined),
              ),
              Icon(Icons.search),
            ],
          )
        ],
      );
  }
}
