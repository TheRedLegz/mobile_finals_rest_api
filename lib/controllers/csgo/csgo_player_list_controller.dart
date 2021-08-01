import 'package:get/get.dart';
import 'package:mobile_finals_rest_api/models/pandascore_models/player_data.dart';
import 'package:mobile_finals_rest_api/services/test_service.dart';

class CsgoPlayerListController extends GetxController {
  var csgoWeaponList = [].obs;
  RxBool isLoading = true.obs;

  void onInit() {
    super.onInit();
    fetchCsgoPlayerList();
  }

  void fetchCsgoPlayerList() async {
    isLoading.value = true;
    var responseBody = await TestService.fetchCsgoPlayerList();
    isLoading.value = false;
    csgoWeaponList.value = playerDataListFromJson(responseBody);
  }
}
