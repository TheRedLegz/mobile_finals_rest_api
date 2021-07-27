import 'package:flutter/material.dart';
import 'package:mobile_finals_rest_api/views/home/widgets/game_tile_csgo.dart';
import 'package:mobile_finals_rest_api/views/home/widgets/game_tile_dota2.dart';
// import 'package:get/get.dart';

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
          GameTileDota2(),
          GameTileCSGO(),
        ],
      ),
    );
  }
}
