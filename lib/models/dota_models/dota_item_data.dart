// To parse this JSON data, do
//
//     final dotaItemData = dotaItemDataFromJson(jsonString);

import 'dart:convert';

List<DotaItemData> dotaItemDataFromJson(String str) => List<DotaItemData>.from(json.decode(str).map((x) => DotaItemData.fromJson(x)));

String dotaItemDataToJson(List<DotaItemData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DotaItemData {
    DotaItemData({
        required this.id,
        required this.imageUrl,
        required this.name,
    });

    int id;
    dynamic imageUrl;
    String name;

    factory DotaItemData.fromJson(Map<String, dynamic> json) => DotaItemData(
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
