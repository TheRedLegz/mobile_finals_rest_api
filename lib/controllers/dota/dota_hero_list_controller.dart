import 'package:get/get.dart';
import 'package:mobile_finals_rest_api/models/dota_models/dota_hero_data.dart';
import 'package:mobile_finals_rest_api/services/test_service.dart';

class DotaHeroListController extends GetxController {
  var dotaHeroList = [].obs;
  RxBool isLoading = true.obs;

  void onInit() {
    super.onInit();
    fetchDotaHeroList();
  }

  void fetchDotaHeroList() async {
    isLoading.value = true;
    var responseBody = await TestService.fetchDotaHeroList();
    isLoading.value = false;
    dotaHeroList.value = dotaHeroDataListFromJson(responseBody);
    
  }
}