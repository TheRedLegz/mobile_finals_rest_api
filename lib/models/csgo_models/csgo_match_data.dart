
import 'dart:convert';

List<CsgoMatchData> csgoMatchDataFromJson(String str) => List<CsgoMatchData>.from(json.decode(str).map((x) => CsgoMatchData.fromJson(x)));

String csgoMatchDataToJson(List<CsgoMatchData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CsgoMatchData {
    CsgoMatchData({
        required this.id,
        required this.name,
        required this.status,
        required this.startedAt,
    });

    int id;
    String name;
    dynamic status;
    dynamic startedAt;

    factory CsgoMatchData.fromJson(Map<String, dynamic> json) => CsgoMatchData(
        id: json["id"],
        name: json["name"],
        status: json["status"],
        startedAt: json["original_scheduled_at"],

    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "status": status,
        "original_scheduled_at": startedAt,
    };
}