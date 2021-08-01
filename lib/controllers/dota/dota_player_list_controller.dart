import 'package:get/get.dart';
import 'package:mobile_finals_rest_api/models/pandascore_models/player_data.dart';
import 'package:mobile_finals_rest_api/services/test_service.dart';

class DotaPlayerListController extends GetxController {
  var dotaPlayerList = [].obs;
  RxBool isLoading = true.obs;

  void onInit() {
    super.onInit();
    fetchDotaPlayerList();
  }

  void fetchDotaPlayerList() async {
    isLoading.value = true;
    var responseBody = await TestService.fetchDotaPlayerList();
    isLoading.value = false;
    dotaPlayerList.value = playerDataListFromJson(responseBody);
  }
}
