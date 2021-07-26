import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_finals_rest_api/views/home/dota2/widgets/custom_buttons.dart';

class Dota2LandingPage extends StatelessWidget {
  const Dota2LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[900],
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Get.back();
            }),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              height: 205,
              child: Image.asset('images/dota.jpg'),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Welcome to Dota 2',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 30),
          CustomButtons(
            name: "View Heroes",
          ),
          SizedBox(height: 20),
          CustomButtons(
            name: "View Items",
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
