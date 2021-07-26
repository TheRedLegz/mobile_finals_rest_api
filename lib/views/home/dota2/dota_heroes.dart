import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DotaHeroes extends StatelessWidget {
  // HeroListController heroListController = Get.put(HeroListController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body:
          // Obx(
          //   () =>
          Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Heroes',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Expanded(
          //   child: StaggeredGridView.countBuilder(
          //     crossAxisCount: 2,
          //     itemCount: heroListController.heroList.length,
          //     crossAxisSpacing: 16,
          //     mainAxisSpacing: 16,
          //     itemBuilder: (context, index) {
          //       return DotaHeroesCard(heroListController.heroList[index]);
          //     },
          //     staggeredTileBuilder: (index) => StaggeredTile.fit(1),
          //   ),
          // )
        ],
      ),
      // ),
    );
  }
}
