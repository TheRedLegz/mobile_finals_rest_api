import 'package:flutter/material.dart';
import 'package:mobile_finals_rest_api/models/pandascore_models/player_data.dart';

class CsgoPlayersCard extends StatelessWidget {
  final PlayerData csplayerData;
  CsgoPlayersCard(this.csplayerData);

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
                  child: csplayerData.imageUrl != null
                      ? Image.network(csplayerData.imageUrl.toString())
                      : Image.asset(
                          'images/csgo.png',
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
                  "Name: " + csplayerData.name,
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
