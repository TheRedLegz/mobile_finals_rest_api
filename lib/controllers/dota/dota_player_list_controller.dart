import 'package:get/get.dart';
import 'package:mobile_finals_rest_api/models/pandascore_models/player_data.dart';
import 'package:mobile_finals_rest_api/services/test_service.dart';

class DotaPlayerListController extends GetxController {
  var csgoWeaponList = [].obs;
  RxBool isLoading = true.obs;

  void onInit() {
    super.onInit();
    fetchDotaPlayerList();
  }

  void fetchDotaPlayerList() async {
    isLoading.value = true;
    var responseBody = await TestService.fetchDotaPlayerList();
    isLoading.value = false;
    csgoWeaponList.value = playerDataListFromJson(responseBody);
  }
}
