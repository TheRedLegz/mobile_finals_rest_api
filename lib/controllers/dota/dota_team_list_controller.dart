import 'package:get/get.dart';
import 'package:mobile_finals_rest_api/models/pandascore_models/team_data.dart';
import 'package:mobile_finals_rest_api/services/test_service.dart';

class DotaTeamListController extends GetxController {
  var dotaTeamList = [].obs;
  RxBool isLoading = true.obs;

  void onInit() {
    super.onInit();
    fetchTeamList();
  }

  void fetchTeamList() async {
    isLoading.value = true;
    var responseBody = await TestService.fetchDotaTeamList();
    isLoading.value = false;
    dotaTeamList.value = teamDataListFromJson(responseBody);
  }
}