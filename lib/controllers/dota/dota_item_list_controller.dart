import 'package:get/get.dart';
import 'package:mobile_finals_rest_api/models/dota_models/dota_item_data.dart';
import 'package:mobile_finals_rest_api/services/test_service.dart';

class DotaItemListController extends GetxController {
  var dotaItemList = [].obs;
  RxBool isLoading = true.obs;

  void onInit() {
    super.onInit();
    fetchDotaItemList();
  }

  void fetchDotaItemList() async {
    var responseBody = await TestService.fetchDotaItemList();
    isLoading.value = false;
    dotaItemList.value = dotaItemDataListFromJson(responseBody);
  }
}