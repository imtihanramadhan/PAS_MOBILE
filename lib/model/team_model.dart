import 'dart:convert';

ListTeamsModel listTeamsModelFromJson(String str) => ListTeamsModel.fromJson(json.decode(str));

String listTeamsModelToJson(ListTeamsModel data) => json.encode(data.toJson());

class ListTeamsModel {
  final List<Team> teams;

  ListTeamsModel({
    required this.teams,
  });

  factory ListTeamsModel.fromJson(Map<String, dynamic> json) => ListTeamsModel(
        teams: json["teams"] == null
            ? []
            : List<Team>.from(json["teams"].map((x) => Team.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "teams": List<dynamic>.from(teams.map((x) => x.toJson())),
      };
}

class Team {
  final String idTeam;
  final String strTeam;
  final String strBadge;
  final String strStadium;
  final String intFormedYear;
  final String strLocation;
  final String strDescriptionEN;
  final String strWebsite;

  Team({
    required this.idTeam,
    required this.strTeam,
    required this.strBadge,
    required this.strStadium,
    required this.intFormedYear,
    required this.strLocation,
    required this.strDescriptionEN,
    required this.strWebsite,
  });

  factory Team.fromJson(Map<String, dynamic> json) => Team(
        idTeam: json["idTeam"]?.toString() ?? "",
        strTeam: json["strTeam"]?.toString() ?? "",
        strBadge: json["strBadge"]?.toString() ?? "",
        strStadium: json["strStadium"]?.toString() ?? "",
        intFormedYear: json["intFormedYear"]?.toString() ?? "",
        strLocation: json["strLocation"]?.toString() ?? "",
        strDescriptionEN: json["strDescriptionEN"]?.toString() ?? "",
        strWebsite: json["strWebsite"]?.toString() ?? "",
      );

  Map<String, dynamic> toJson() => {
        "idTeam": idTeam,
        "strTeam": strTeam,
        "strBadge": strBadge,
        "strStadium": strStadium,
        "intFormedYear": intFormedYear,
        "strLocation": strLocation,
        "strDescriptionEN": strDescriptionEN,
        "strWebsite": strWebsite,
      };
}