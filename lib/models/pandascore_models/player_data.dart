// To parse this JSON data, do
//
//     final players = playersFromJson(jsonString);

import 'dart:convert';

import 'current_videogame.dart';

List<PlayerData> playerDataListFromJson(String str) =>
    List<PlayerData>.from(json.decode(str).map((x) => PlayerData.fromJson(x)));
List<PlayerData> playerDataListFromJsonObject(
        List<Map<String, dynamic>> jsonObject) =>
    List<PlayerData>.from(jsonObject.map((x) => PlayerData.fromJson(x)));

String playerDataToJson(List<PlayerData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PlayerData {
  PlayerData({
    // this.birthYear,
    // this.birthday,
    // NOTE: Keep track of this when team data calls this
    // this.currentTeam,
    this.currentVideogame,
    this.firstName,
    this.hometown,
    required this.id,
    this.imageUrl,
    this.lastName,
    required this.name,
    this.nationality,
    this.role,
    required this.slug,
  });

  // dynamic birthYear; // DateTime?
  // dynamic birthday; //DateTime?
  // CurrentTeam? currentTeam;
  CurrentVideogame? currentVideogame;
  String? firstName;
  dynamic hometown; // String?
  int id;
  String? imageUrl;
  String? lastName;
  String name;
  String? nationality;
  String? role;
  String slug;

  factory PlayerData.fromJson(Map<String, dynamic> json) => PlayerData(
        // birthYear: json["birth_year"],
        // birthday: json["birthday"],
        // currentTeam: CurrentTeam.fromJson(json["current_team"]),
        currentVideogame: CurrentVideogame.fromJson(json["current_videogame"]),
        firstName: json["first_name"],
        hometown: json["hometown"],
        id: json["id"],
        imageUrl: json["image_url"],
        lastName: json["last_name"],
        name: json["name"],
        nationality: json["nationality"],
        role: json["role"],
        slug: json["slug"],
      );

  Map<String, dynamic> toJson() => {
        // "birth_year": birthYear,
        // "birthday": birthday,
        // "current_team": currentTeam?.toJson(),
        "current_videogame": currentVideogame?.toJson(),
        "first_name": firstName,
        "hometown": hometown,
        "id": id,
        "image_url": imageUrl,
        "last_name": lastName,
        "name": name,
        "nationality": nationality,
        "role": role,
        "slug": slug,
      };
}

class CurrentTeam {
  CurrentTeam({
    this.acronym,
    required this.id,
    this.imageUrl,
    this.location,
    required this.modifiedAt,
    required this.name,
    required this.slug,
  });

  dynamic acronym;
  int id;
  String? imageUrl;
  dynamic location;
  DateTime modifiedAt;
  String name;
  String slug;

  factory CurrentTeam.fromJson(Map<String, dynamic> json) => CurrentTeam(
        acronym: json["acronym"],
        id: json["id"],
        imageUrl: json["image_url"],
        location: json["location"],
        modifiedAt: DateTime.parse(json["modified_at"]),
        name: json["name"],
        slug: json["slug"],
      );

  Map<String, dynamic> toJson() => {
        "acronym": acronym,
        "id": id,
        "image_url": imageUrl,
        "location": location,
        "modified_at": modifiedAt.toIso8601String(),
        "name": name,
        "slug": slug,
      };
}
