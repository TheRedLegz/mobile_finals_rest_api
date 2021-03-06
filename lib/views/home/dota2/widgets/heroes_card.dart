import 'package:flutter/material.dart';
import 'package:mobile_finals_rest_api/models/dota_models/dota_hero_data.dart';

class DotaHeroesCard extends StatelessWidget {
  final DotaHeroData heroData;
  DotaHeroesCard(this.heroData);

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
                  height: 180,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Image.network(
                    heroData.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heroData.localizedName,
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
