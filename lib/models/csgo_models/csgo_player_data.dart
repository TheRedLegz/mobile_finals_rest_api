// To parse this JSON data, do
//
//     final csgoPlayerData = csgoPlayerDataFromJson(jsonString);

import 'dart:convert';

List<CsgoPlayerData> csgoPlayerDataFromJson(String str) => List<CsgoPlayerData>.from(json.decode(str).map((x) => CsgoPlayerData.fromJson(x)));

String csgoPlayerDataToJson(List<CsgoPlayerData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CsgoPlayerData {
    CsgoPlayerData({
        this.birthYear,
        this.birthday,
        required this.currentTeam,
        required this.currentVideogame,
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

    dynamic birthYear;
    dynamic birthday;
    Current currentTeam;
    Current currentVideogame;
    dynamic firstName;
    dynamic hometown;
    int id;
    dynamic imageUrl;
    dynamic lastName;
    String name;
    dynamic nationality;
    dynamic role;
    String slug;

    factory CsgoPlayerData.fromJson(Map<String, dynamic> json) => CsgoPlayerData(
        birthYear: json["birth_year"],
        birthday: json["birthday"],
        currentTeam: Current.fromJson(json["current_team"]),
        currentVideogame: Current.fromJson(json["current_videogame"]),
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
        "birth_year": birthYear,
        "birthday": birthday,
        "current_team": currentTeam.toJson(),
        "current_videogame": currentVideogame.toJson(),
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

class Current {
    Current();

    factory Current.fromJson(Map<String, dynamic> json) => Current(
    );

    Map<String, dynamic> toJson() => {
    };
}
