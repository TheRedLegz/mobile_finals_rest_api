import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_finals_rest_api/views/home/dota2/dota_heroes.dart';

class CSGOLandingPage extends StatelessWidget {
  const CSGOLandingPage({Key? key}) : super(key: key);

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
              alignment: Alignment.center,
              height: 205,
              child: Image.asset('images/csgo.jpg'),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Welcome to CSGO',
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
              onPressed: () {},
              child: Text(
                "View Matches",
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.grey[800],
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 50.0,
            width: 300,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "View Players",
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.grey[800],
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 50.0,
            width: 300,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "View Teams",
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.grey[800],
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 50.0,
            width: 300,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "View Weapons",
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.grey[800],
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
