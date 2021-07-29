import 'package:get/get.dart';
import 'package:mobile_finals_rest_api/models/csgo_models/csgo_weapon_data.dart';
import 'package:mobile_finals_rest_api/services/test_service.dart';

class CsgoWeaponListController extends GetxController {
  var csgoWeaponList = [].obs;
  RxBool isLoading = true.obs;

  void onInit() {
    super.onInit();
    fetchDotaItemList();
  }

  void fetchDotaItemList() async {
    var responseBody = await TestService.fetchCsgoWeaponList();
    isLoading.value = false;
    csgoWeaponList.value = csgoWeaponDataListFromJson(responseBody);
  }
}