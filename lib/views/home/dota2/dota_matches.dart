import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_finals_rest_api/controllers/dota/dota_match_list_controller.dart';
import 'package:mobile_finals_rest_api/models/dota_models/dota_match_data.dart';
import 'package:mobile_finals_rest_api/services/test_service.dart';
import 'package:mobile_finals_rest_api/views/home/dota2/widgets/matches_card.dart';

class DotaMatches extends StatelessWidget {
  final DotaMatchListController _matchListController = Get.put(DotaMatchListController());
  DotaMatches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'Matches',
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
                      'Load Matches',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.refresh),
                      onPressed: () async {
                        var res = await TestService.fetchDotaMatchList();
                        dotaMatchDataFromJson(res).forEach((match) {
                          print(match.name);
                        });
                      },
                    ),
                  ],
                ),
                Expanded(
                  child: Obx(
                    () => _matchListController.isLoading.value
                        ? Center(child: CircularProgressIndicator())
                        : ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount:
                                _matchListController.dotaMatchList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return DotaMatchCard(
                                  _matchListController.dotaMatchList[index]);
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
