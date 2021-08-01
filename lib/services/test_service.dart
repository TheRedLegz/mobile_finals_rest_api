import 'dart:convert';

import "package:http/http.dart" as http;
import 'package:mobile_finals_rest_api/models/dota_models/dota_hero_data.dart';

class TestService {
  static Future<String> fetchDotaHeroList() async {
    var response = await http.get(Uri.parse(
        "https://api.pandascore.co/dota2/heroes?token=TfBqN1OTQ1YYqN2DTsZovyJsY4uvp4kRwRESiHbdFiKRdgBaEcs"));
    return response.body;
  }

  static Future<String> fetchDotaItemList() async {
    var response = await http.get(Uri.parse(
        "https://api.pandascore.co/dota2/items?token=TfBqN1OTQ1YYqN2DTsZovyJsY4uvp4kRwRESiHbdFiKRdgBaEcs"));
    return response.body;
  }

  static Future<String> fetchCsgoWeaponList() async {
    var response = await http.get(Uri.parse(
        "https://api.pandascore.co/csgo/weapons?token=TfBqN1OTQ1YYqN2DTsZovyJsY4uvp4kRwRESiHbdFiKRdgBaEcs"));
    return response.body;
  }

  static Future<String> fetchCsgoPlayerList() async {
    var response = await http.get(Uri.parse(
        "https://api.pandascore.co/csgo/players?token=TfBqN1OTQ1YYqN2DTsZovyJsY4uvp4kRwRESiHbdFiKRdgBaEcs"));
    return response.body;
  }

  static Future<String> fetchDotaPlayerList() async {
    var response = await http.get(Uri.parse(
        "https://api.pandascore.co/dota2/players?token=TfBqN1OTQ1YYqN2DTsZovyJsY4uvp4kRwRESiHbdFiKRdgBaEcs"));
    return response.body;
  }

// Future<HeroModel> fetchHeroById(String heroId) async {
//   var response = await http.get(Uri.parse("https://api.pandascore.co/dota2/heroes/$heroId?token=TfBqN1OTQ1YYqN2DTsZovyJsY4uvp4kRwRESiHbdFiKRdgBaEcs"));
//   return HeroModel.fromJson(jsonDecode(response.body));
// }
// void testPost() async {
//   var response = await http.get(Uri.parse("https://api.pandascore.co/dota2/heroes?token=TfBqN1OTQ1YYqN2DTsZovyJsY4uvp4kRwRESiHbdFiKRdgBaEcs"));
//   print(response.body);
// }
}
