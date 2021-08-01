import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_finals_rest_api/controllers/dota/dota_player_list_controller.dart';
import 'package:mobile_finals_rest_api/views/home/dota2/widgets/players_card.dart';

class DotaPlayers extends StatelessWidget {
  final DotaPlayerListController _playerListController =
      Get.put(DotaPlayerListController());
  DotaPlayers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'Players',
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Load Players',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.refresh),
                      onPressed: () async {
                        _playerListController.fetchDotaPlayerList();
                      },
                    ),
                  ],
                ),
                Expanded(
                  child: Obx(
                    () => _playerListController.isLoading.value
                        ? Center(child: CircularProgressIndicator())
                        : ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount:
                                _playerListController.dotaPlayerList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return DotaPlayersCard(
                                  _playerListController.dotaPlayerList[index]);
                            },
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
