import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_finals_rest_api/views/home/dota2/dota_heroes.dart';
import 'package:mobile_finals_rest_api/views/home/dota2/dota_matches.dart';

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
          Container(
            height: 220,
            width: double.infinity,
            child: Image.asset(
              'images/dota.jpg',
              fit: BoxFit.fill,
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
          Container(
            height: 50.0,
            width: 300,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => DotaHeroes());
              },
              child: Text(
                "View Heroes",
                style: TextStyle(color: Colors.red),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.grey[800],
                  textStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 50.0,
            width: 300,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "View Items",
                style: TextStyle(color: Colors.red),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.grey[800],
                  textStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 50.0,
            width: 300,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => DotaMatches());
              },
              child: Text(
                "View Matches",
                style: TextStyle(color: Colors.red),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.grey[800],
                  textStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
