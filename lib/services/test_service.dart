import 'dart:convert';

import "package:http/http.dart" as http;
import 'package:mobile_finals_rest_api/models/dota_models/dota_hero_data.dart';

Future<String> fetchHeroList() async {
  var response = await http.get(Uri.parse("https://api.pandascore.co/dota2/heroes?token=TfBqN1OTQ1YYqN2DTsZovyJsY4uvp4kRwRESiHbdFiKRdgBaEcs"));
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