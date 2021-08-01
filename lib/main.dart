import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_finals_rest_api/controllers/dota/dota_item_list_controller.dart';
import 'package:mobile_finals_rest_api/models/dota_models/dota_hero_data.dart';
import 'package:mobile_finals_rest_api/services/test_service.dart';
import 'package:mobile_finals_rest_api/views/home/home.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Game Data Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

// To be removed in final build
class TestScreen extends StatelessWidget {
  final DotaItemListController _heroListController =
      Get.put(DotaItemListController());
  TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Test Widget"),
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () async {
                  var res = await TestService.fetchDotaHeroList();
                  dotaHeroDataListFromJson(res).forEach((hero) {
                    print(hero.name);
                  });
                },
                child: Text("Press Me"),
              ),
              Expanded(
                child: Obx(
                  () => _heroListController.isLoading.value
                      ? Center(child: CircularProgressIndicator())
                      : ListView.builder(
                          itemCount: _heroListController.dotaItemList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              leading: _heroListController
                                          .dotaItemList[index].imageUrl ==
                                      null
                                  ? CircleAvatar(
                                      backgroundColor: Colors.white,
                                    )
                                  : CircleAvatar(
                                      backgroundColor: Colors.white,
                                      backgroundImage: NetworkImage(
                                          _heroListController
                                              .dotaItemList[index].imageUrl),
                                    ),
                              title: Text(
                                  "${_heroListController.dotaItemList[index].name}"),
                            );
                          },
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
