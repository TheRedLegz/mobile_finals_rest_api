import 'package:flutter/material.dart';
import 'package:mobile_finals_rest_api/models/csgo_models/csgo_weapon_data.dart';

class CsgoWeaponData extends StatelessWidget {
  final CsgoWeaponData weaponData;
  CsgoWeaponData(this.weaponData);

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
                    // height: 180,
                    // width: double.infinity,
                    // clipBehavior: Clip.antiAlias,
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(4),
                    // ),
                    // child: Image.network(
                    //   matchData.imageUrl,
                    //   fit: BoxFit.cover,
                    // ),
                    ),
              ],
            ),
            SizedBox(height: 5),
            Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // children: [
                //   Text(
                //     " " ,
                //     maxLines: 2,
                //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
                //     overflow: TextOverflow.ellipsis,
                //   ),
                //   Text(
                //     " " ,
                //     maxLines: 2,
                //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
                //     overflow: TextOverflow.ellipsis,
                //   ),
                // ],
                ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
