import 'package:flutter/material.dart';
import 'package:mobile_finals_rest_api/models/dota_models/dota_match_data.dart';

class DotaMatchCard extends StatelessWidget {
  final DotaMatchData matchData;
  DotaMatchCard(this.matchData);

  getStatus(String jsonStatus) {
    switch(jsonStatus) {
      case "canceled": {
        return "Cancelled";
      }
      case "finished": {
        return "Finished";
      }
      case "not_started": {
        return "Not started";
      }
      case "postponed": {
        return "Postponed";
      }
      case "running": {
        return "Running";
      }
      default: {
        return "Status Unavailable";
      }

    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(13),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Column(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  child: Image.asset(
                    'images/dota2.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  matchData.name,
                  maxLines: 2,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: Colors.red),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                Text(
                  "Schedule: " + matchData.startedAt,
                  maxLines: 2,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "Status: " + getStatus(matchData.status),
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
