// To parse this JSON data, do
//
//     final currentVideogame = currentVideogameFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

CurrentVideogame currentVideogameFromJson(String str) => CurrentVideogame.fromJson(json.decode(str));

String currentVideogameToJson(CurrentVideogame data) => json.encode(data.toJson());

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
