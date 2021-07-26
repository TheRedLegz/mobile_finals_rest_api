import 'package:get/get.dart';
import 'package:mobile_finals_rest_api/models/dota_models/dota_hero_data.dart';
import 'package:mobile_finals_rest_api/services/test_service.dart';

class HeroListController extends GetxController {
  var heroList = [].obs;

  void fetchHeroList() async {
    var responseBody = await TestService.fetchHeroList();

    heroList.value = dotaHeroDataListFromJson(responseBody);
  }
}