import 'package:get/get.dart';
import 'package:mobile_finals_rest_api/models/dota_models/dota_match_data.dart';
import 'package:mobile_finals_rest_api/services/test_service.dart';

class DotaMatchListController extends GetxController {
  var dotaMatchList = [].obs;
  RxBool isLoading = true.obs;

  void onInit() {
    super.onInit();
    fetchMatchList();
  }

  void fetchMatchList() async {
    isLoading.value = true;
    var responseBody = await TestService.fetchDotaMatchList();
    isLoading.value = false;
    dotaMatchList.value = dotaMatchDataFromJson(responseBody);
  }
}