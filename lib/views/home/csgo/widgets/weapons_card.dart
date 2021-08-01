import 'package:flutter/material.dart';
import 'package:mobile_finals_rest_api/models/csgo_models/csgo_weapon_data.dart';

class CsgoWeaponCard extends StatelessWidget {
  final CsgoWeaponData weaponData;
  CsgoWeaponCard(this.weaponData);

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
                  child: Image.network(weaponData.imageUrl),
                ),
                SizedBox(height: 8),
                FittedBox(
                  child: Text(
                    weaponData.name,
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.orange),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 8),
                FittedBox(
                  child: weaponData.ammoClipMax == 1 ? null : Text(
                    "Clip Size: ${weaponData.ammoClipMax}",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.amber),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 8),
                FittedBox(
                  child: Text(
                    "Price: ${weaponData.cost}",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.amberAccent),
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
