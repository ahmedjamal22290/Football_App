import 'package:l/models/fixture_model.dart';

class fixturesStates {}

class thereIsNoMatches extends fixturesStates {}

class matchesLoaded extends fixturesStates {
  matchesLoaded({required this.listFix});
  List<fixtureModel> listFix;
}
