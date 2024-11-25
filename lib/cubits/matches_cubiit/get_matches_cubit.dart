import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:l/cubits/matches_cubiit/get_matches_states.dart';
import 'package:l/models/fixture_model.dart';
import 'package:l/services/fixtures_service.dart';

class getMatchesCubit extends Cubit<fixturesStates> {
  getMatchesCubit() : super(thereIsNoMatches()) {
    getMatches();
  }
  late List<fixtureModel> matchesList;
  getMatches() async {
    matchesList = await fixtureService().getFixture();

    emit(matchesLoaded(listFix: matchesList));
  }
}
