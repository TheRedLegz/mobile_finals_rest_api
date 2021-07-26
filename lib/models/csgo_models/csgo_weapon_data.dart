// To parse this JSON data, do
//
//     final csgoWeaponData = csgoWeaponDataFromJson(jsonString);

import 'dart:convert';

List<CsgoWeaponData> csgoWeaponDataFromJson(String str) => List<CsgoWeaponData>.from(json.decode(str).map((x) => CsgoWeaponData.fromJson(x)));

String csgoWeaponDataToJson(List<CsgoWeaponData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CsgoWeaponData {
    CsgoWeaponData({
        required this.ammoClipMax,
        required this.ammoMax,
        required this.cost,
        required this.id,
        required this.imageUrl,
        required this.killReward,
        required this.kind,
        required this.name,
        required this.slug,
    });

    int ammoClipMax;
    int ammoMax;
    int cost;
    int id;
    String imageUrl;
    int killReward;
    String kind;
    String name;
    String slug;

    factory CsgoWeaponData.fromJson(Map<String, dynamic> json) => CsgoWeaponData(
        ammoClipMax: json["ammo_clip_max"],
        ammoMax: json["ammo_max"],
        cost: json["cost"],
        id: json["id"],
        imageUrl: json["image_url"],
        killReward: json["kill_reward"],
        kind: json["kind"],
        name: json["name"],
        slug: json["slug"],
    );

    Map<String, dynamic> toJson() => {
        "ammo_clip_max": ammoClipMax,
        "ammo_max": ammoMax,
        "cost": cost,
        "id": id,
        "image_url": imageUrl,
        "kill_reward": killReward,
        "kind": kind,
        "name": name,
        "slug": slug,
    };
}
