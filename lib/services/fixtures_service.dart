import 'package:dio/dio.dart';
import 'package:l/models/fixture_model.dart';

class fixtureService {
  final Dio dio = Dio();
  Options options = Options(headers: {
    'x-rapidapi-key': '8ac678ba71205aacaad685d3d045fff8',
    'x-rapidapi-host': 'v3.football.api-sports.io',
  });
  String baseUrl = "https://v3.football.api-sports.io/fixtures?";
  Future<List<fixtureModel>> getFixture() async {
    String paraQuery = "next=20&league=140";
    String http = "${baseUrl}${paraQuery}";

    Response response = await dio.get(http, options: options);
    Map<String, dynamic> jsonn = response.data;
    List<fixtureModel> results = [];
    for (int i = 0; i < 20; i++) {
      results.add(fixtureModel(
          status: jsonn['response'][i]['fixture']['status']['long'],
          awayTeam: jsonn['response'][i]['teams']['away']['name'],
          awayTeamImage: jsonn['response'][i]['teams']['away']['logo'],
          homeTeam: jsonn['response'][i]['teams']['home']['name'],
          homeTeamImage: jsonn['response'][i]['teams']['home']['logo'],
          matchTime: jsonn['response'][i]['fixture']['date'],
          PmOrAm: jsonn['response'][i]['fixture']['date']));
    }
    return results;
  }
}
