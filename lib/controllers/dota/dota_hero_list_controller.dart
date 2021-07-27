import 'package:get/get.dart';
import 'package:mobile_finals_rest_api/models/dota_models/dota_hero_data.dart';
import 'package:mobile_finals_rest_api/services/test_service.dart';

class DotaHeroListController extends GetxController {
  var heroList = [].obs;
  RxBool isLoading = true.obs;

  void onInit() {
    super.onInit();
    fetchDotaHeroList();
  }

  void fetchDotaHeroList() async {
    var responseBody = await TestService.fetchHeroList();
    isLoading.value = false;
    heroList.value = dotaHeroDataListFromJson(responseBody);
    
  }
}