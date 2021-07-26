// To parse this JSON data, do
//
//     final csgoMatchData = csgoMatchDataFromJson(jsonString);

import 'dart:convert';

List<CsgoMatchData> csgoMatchDataFromJson(String str) => List<CsgoMatchData>.from(json.decode(str).map((x) => CsgoMatchData.fromJson(x)));

String csgoMatchDataToJson(List<CsgoMatchData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CsgoMatchData {
    CsgoMatchData({
        required this.id,
        required this.imageUrl,
        required this.name,
    });

    int id;
    String imageUrl;
    String name;

    factory CsgoMatchData.fromJson(Map<String, dynamic> json) => CsgoMatchData(
        id: json["id"],
        imageUrl: json["image_url"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "image_url": imageUrl,
        "name": name,
    };
}