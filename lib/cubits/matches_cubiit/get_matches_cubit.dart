import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:l/cubits/matches_cubiit/get_matches_states.dart';
import 'package:l/models/fixture_model.dart';
import 'package:l/services/fixtures_service.dart';

class getMatchesCubit extends Cubit<fixturesStates> {
  getMatchesCubit({required this.leagueID}) : super(thereIsNoMatches()) {
    getMatches(leagueID);
  }
  String leagueID;
  late List<fixtureModel> matchesList;
  getMatches(String leagueId) async {
    matchesList = await fixtureService().getFixture(leagueId);
    if (matchesList.isEmpty) {
      emit(thereIsNoMatches());
    } else
      emit(matchesLoaded(listFix: matchesList));
  }
}
