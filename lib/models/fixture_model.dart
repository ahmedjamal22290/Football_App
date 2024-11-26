class fixtureModel {
  String homeTeamImage,
      status,
      awayTeamImage,
      homeTeam,
      awayTeam,
      matchTime,
      PmOrAm,
      leagueImage;
  fixtureModel(
      {required this.leagueImage,
      required this.homeTeam,
      required this.homeTeamImage,
      required this.awayTeam,
      required this.awayTeamImage,
      required this.matchTime,
      required this.PmOrAm,
      required this.status});
  // factory fixtureModel.fromjson(jsonn) {
  //   return fixtureModel(awayTeam:
  //   , awayTeamImage:
  //   , homeTeam:
  //   , homeTeamImage:
  //   , matchTime:
  //   , PmOrAm:
  //   )
  // }
}
