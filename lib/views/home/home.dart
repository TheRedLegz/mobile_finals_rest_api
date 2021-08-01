import 'package:flutter/material.dart';
import 'package:mobile_finals_rest_api/views/home/widgets/game_tile.dart';
import 'csgo/csgo_landing_page.dart';
import 'dota2/dota_landing_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Game Data Tracker'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        shrinkWrap: true,
        children: [
          GameTile(
            imagePath: 'images/dota2.jpg',
            landingPage: Dota2LandingPage(),
          ),
          GameTile(
            imagePath: 'images/csgo.png',
            landingPage: CSGOLandingPage(),
          ),
        ],
      ),
    );
  }
}
