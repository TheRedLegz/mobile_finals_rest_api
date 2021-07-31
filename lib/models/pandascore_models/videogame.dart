// To parse this JSON data, do
//
//     final videogameData = videogameDataFromJson(jsonString);

import 'dart:convert';

VideogameData videogameDataFromJson(String str) => VideogameData.fromJson(json.decode(str));

String videogameDataToJson(VideogameData data) => json.encode(data.toJson());

class VideogameData {
    VideogameData({
        this.currentVersion,
        required this.id,
        required this.name,
        required this.slug,
    });

    dynamic currentVersion; // Unknown data type? 
    int id;
    String name;
    String slug;

    factory VideogameData.fromJson(Map<String, dynamic> json) => VideogameData(
        currentVersion: json["current_version"],
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
    );

    Map<String, dynamic> toJson() => {
        "current_version": currentVersion,
        "id": id,
        "name": name,
        "slug": slug,
    };
}
