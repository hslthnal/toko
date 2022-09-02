import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
            "images/shop.jpg",
            width: 100,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text("FoodShop.id", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),),
          )
            ],
          ),
          
        ),
      ),
    );
  }
}
