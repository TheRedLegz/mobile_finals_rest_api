import 'package:get/get.dart';
import 'package:mobile_finals_rest_api/models/csgo_models/csgo_match_data.dart';
import 'package:mobile_finals_rest_api/services/test_service.dart';

class CsgoMatchListController extends GetxController {
  var csgoMatchList = [].obs;
  RxBool isLoading = true.obs;

  void onInit() {
    super.onInit();
    fetchMatchItemList();
  }

  void fetchMatchItemList() async {
    var responseBody = await TestService.fetchCsgoMatchList();
    isLoading.value = false;
    csgoMatchList.value = csgoMatchDataFromJson(responseBody);
  }
}