
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:mobile_finals_rest_api/controllers/dota/dota_hero_list_controller.dart';
import 'package:mobile_finals_rest_api/models/dota_models/dota_hero_data.dart';
import 'package:mobile_finals_rest_api/services/test_service.dart';
import 'package:mobile_finals_rest_api/views/home/dota2/widgets/heroes_card.dart';

class DotaHeroes extends StatelessWidget {
  final DotaHeroListController _heroListController = Get.put(DotaHeroListController());
  DotaHeroes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'Heroes',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w900,
          ),
        ),
        backgroundColor: Colors.grey[900],
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Load Heroes',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.refresh),
                    onPressed: () async {
                      var res = await TestService.fetchHeroList();
                      dotaHeroDataListFromJson(res).forEach((hero) {
                        print(hero.name);
                      });
                    },
                  ),
                ],
              ),
              Expanded(
                child: Obx(
                  () => _heroListController.isLoading.value
                      ? Center(child: CircularProgressIndicator())
                      : StaggeredGridView.countBuilder(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          itemCount: _heroListController.heroList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return DotaHeroesCard(
                                _heroListController.heroList[index]);
                          },
                          staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
