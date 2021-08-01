
import 'dart:convert';

List<DotaMatchData> dotaMatchDataFromJson(String str) => List<DotaMatchData>.from(json.decode(str).map((x) => DotaMatchData.fromJson(x)));

String dotaMatchDataToJson(List<DotaMatchData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DotaMatchData {
    DotaMatchData({
        required this.id,
        required this.name,
        required this.status,
        required this.startedAt,
    });

    int id;
    String name;
    dynamic status;
    dynamic startedAt;

    factory DotaMatchData.fromJson(Map<String, dynamic> json) => DotaMatchData(
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