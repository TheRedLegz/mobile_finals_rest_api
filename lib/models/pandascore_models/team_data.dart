// To parse this JSON data, do
//
//     final teamData = teamDataFromJson(jsonString);

import 'dart:convert';

import 'player_data.dart';

import 'current_videogame.dart';

List<TeamData> teamDataListFromJson(String str) => List<TeamData>.from(json.decode(str).map((x) => TeamData.fromJson(x)));

String teamDataToJson(List<TeamData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TeamData {
    TeamData({
        this.acronym,
        // required this.currentVideogame,
        required this.id,
        this.imageUrl,
        this.location,
        // required this.modifiedAt,
        required this.name,
        // required this.players, //Change this later
        required this.slug,
    });

    String? acronym;
    // CurrentVideogame currentVideogame;
    int id;
    String? imageUrl;
    String? location;
    // DateTime modifiedAt;
    String name;
    // List<PlayerData> players; //Change this later
    String slug;

    factory TeamData.fromJson(Map<String, dynamic> json) => TeamData(
        acronym: json["acronym"],
        //currentVideogame: CurrentVideogame.fromJson(json["current_videogame"]),
        id: json["id"],
        imageUrl: json["image_url"],
        location: json["location"],
        // modifiedAt: DateTime.parse(json["modified_at"]),
        name: json["name"],
        // players: playerDataListFromJsonObject(json["players"]),
        slug: json["slug"],
    );

    Map<String, dynamic> toJson() => {
        "acronym": acronym,
        // "current_videogame": currentVideogame.toJson(),
        "id": id,
        "image_url": imageUrl,
        "location": location,
        // "modified_at": modifiedAt.toIso8601String(),
        "name": name,
        // "players": List<dynamic>.from(players.map((x) => x.toJson())),
        "slug": slug,
    };
}