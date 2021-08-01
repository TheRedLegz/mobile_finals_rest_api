import 'package:flutter/material.dart';
import 'package:mobile_finals_rest_api/models/pandascore_models/player_data.dart';

class DotaPlayersCard extends StatelessWidget {
  final PlayerData playerData;
  DotaPlayersCard(this.playerData);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  child: playerData.imageUrl != null
                      ? Image.network(playerData.imageUrl.toString())
                      : Image.asset(
                          'images/dota2.jpg',
                          fit: BoxFit.fill,
                        ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name: " + playerData.name,
                  maxLines: 2,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
