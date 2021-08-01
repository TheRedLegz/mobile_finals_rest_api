import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_finals_rest_api/views/home/csgo/csgo_matches.dart';
import 'package:mobile_finals_rest_api/views/home/csgo/csgo_players.dart';
import 'package:mobile_finals_rest_api/views/home/csgo/csgo_teams.dart';

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
          Container(
            height: 220,
            width: double.infinity,
            child: Image.asset(
              'images/csgo.jpg',
              fit: BoxFit.fill,
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
              onPressed: () {
                Get.to(() => CsgoMatches());
              },
              child: Text(
                "View Matches",
                style: TextStyle(color: Colors.amber),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.grey[800],
                  textStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 50.0,
            width: 300,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => CsgoPlayers());
              },
              child: Text(
                "View Players",
                style: TextStyle(color: Colors.amber),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.grey[800],
                  textStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 50.0,
            width: 300,
            child: ElevatedButton(
              onPressed: () {
                //Get.to(()=> CsgoTeams());
              },
              child: Text(
                "View Teams",
                style: TextStyle(color: Colors.amber),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.grey[800],
                  textStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
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
                style: TextStyle(color: Colors.amber),
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
