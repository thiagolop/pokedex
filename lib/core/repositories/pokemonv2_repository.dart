import '../models/poker_api_v2.dart';

abstract class PokemonRepositoryV2 {
  Future<PokerAPIv2> getAllDetails(String name);
}
