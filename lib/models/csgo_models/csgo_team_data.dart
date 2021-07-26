// To parse this JSON data, do
//
//     final csgoTeamData = csgoTeamDataFromJson(jsonString);

import 'dart:convert';

List<CsgoTeamData> csgoTeamDataFromJson(String str) => List<CsgoTeamData>.from(json.decode(str).map((x) => CsgoTeamData.fromJson(x)));

String csgoTeamDataToJson(List<CsgoTeamData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CsgoTeamData {
    CsgoTeamData({
        this.acronym,
        required this.currentVideogame,
        required this.id,
        this.imageUrl,
        this.location,
        required this.modifiedAt,
        required this.name,
        required this.players, // Consider that it can be nullable
        required this.slug,
    });

    dynamic acronym;
    CurrentVideogame currentVideogame;
    int id;
    dynamic imageUrl;
    dynamic location;
    DateTime modifiedAt;
    String name;
    List<dynamic> players;
    String slug;

    factory CsgoTeamData.fromJson(Map<String, dynamic> json) => CsgoTeamData(
        acronym: json["acronym"],
        currentVideogame: CurrentVideogame.fromJson(json["current_videogame"]),
        id: json["id"],
        imageUrl: json["image_url"],
        location: json["location"],
        modifiedAt: DateTime.parse(json["modified_at"]),
        name: json["name"],
        players: List<dynamic>.from(json["players"].map((x) => x)),
        slug: json["slug"],
    );

    Map<String, dynamic> toJson() => {
        "acronym": acronym,
        "current_videogame": currentVideogame.toJson(),
        "id": id,
        "image_url": imageUrl,
        "location": location,
        "modified_at": modifiedAt.toIso8601String(),
        "name": name,
        "players": List<dynamic>.from(players.map((x) => x)),
        "slug": slug,
    };
}

class CurrentVideogame {
    CurrentVideogame({
        required this.id,
        required this.name,
        required this.slug,
    });

    int id;
    String name;
    String slug;

    factory CurrentVideogame.fromJson(Map<String, dynamic> json) => CurrentVideogame(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
    };
}
