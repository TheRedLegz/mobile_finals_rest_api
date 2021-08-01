import 'package:flutter/material.dart';
import 'package:mobile_finals_rest_api/models/pandascore_models/team_data.dart';

class DotaTeamCard extends StatelessWidget {
  final TeamData teamData;
  DotaTeamCard(this.teamData);
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
                  child: teamData.imageUrl != null
                      ? Image.network(teamData.imageUrl.toString())
                      : Image.asset(
                          'images/dota.jpg',
                          fit: BoxFit.fill,
                        ),
                ),
                SizedBox(height: 8),
                Text(
                  teamData.name,
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.amber),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 8),
                teamData.acronym == null
                    ? Container()
                    : Center(
                      child: Text(
                          "${teamData.acronym}",
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.amber,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                    ),
                SizedBox(height: 8),
                teamData.location == null
                    ? Container()
                    : Center(
                      child: Text(
                          "Location: ${teamData.location}",
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.amber,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
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
