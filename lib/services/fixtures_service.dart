import 'package:dio/dio.dart';
import 'package:l/models/fixture_model.dart';
import 'package:l/screen/home_page.dart';

class fixtureService {
  final Dio dio = Dio();
  Options options = Options(headers: {
    'x-rapidapi-key': '244fdb67ac15551d29bf32f510963b89',
    'x-rapidapi-host': 'v3.football.api-sports.io',
  });
  String league = '2';
  String baseUrl = "https://v3.football.api-sports.io/fixtures?";
  Future<List<fixtureModel>> getFixture(String leagueID) async {
    String paraQuery = "next=20&league=${leagueID}";
    String http = "${baseUrl}${paraQuery}";

    try {
      Response response = await dio.get(http, options: options);
      Map<String, dynamic> jsonn = response.data;
      List<fixtureModel> results = [];

      for (int i = 0; i < jsonn.length + 3; i++) {
        if (DateTime.parse(jsonn['response'][i]['fixture']['date']).day !=
            now.day) {
          break;
        }
        results.add(fixtureModel(
            leagueImage: jsonn['response'][i]['league']['logo'],
            status: jsonn['response'][i]['fixture']['status']['long'],
            awayTeam: jsonn['response'][i]['teams']['away']['name'],
            awayTeamImage: jsonn['response'][i]['teams']['away']['logo'],
            homeTeam: jsonn['response'][i]['teams']['home']['name'],
            homeTeamImage: jsonn['response'][i]['teams']['home']['logo'],
            matchTime: jsonn['response'][i]['fixture']['date'],
            PmOrAm: jsonn['response'][i]['fixture']['date']));
      }
      return results;
    } catch (e) {
      return [];
    }
  }
}
