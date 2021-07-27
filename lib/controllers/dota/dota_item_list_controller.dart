import 'package:get/get.dart';
import 'package:mobile_finals_rest_api/models/dota_models/dota_hero_data.dart';
import 'package:mobile_finals_rest_api/services/test_service.dart';

class DotaItemListController extends GetxController {
  var itemList = [].obs;
  RxBool isLoading = true.obs;

  void onInit() {
    super.onInit();
    fetchDotaItemList();
  }

  void fetchDotaItemList() async {
    var responseBody = await TestService.fetchHeroList();
    isLoading.value = false;
    itemList.value = dotaHeroDataListFromJson(responseBody);
  }
}