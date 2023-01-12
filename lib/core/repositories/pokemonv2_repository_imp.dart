import 'package:pokedex/core/models/poker_api_v2.dart';
import 'package:pokedex/core/repositories/pokemonv2_repository.dart';
import '../api/api_pokemon_go.dart';
import '../service/dio_service.dart';

class Pokemonv2RepositoryImp implements PokemonRepositoryV2 {
  final DioService _dioService;
  Pokemonv2RepositoryImp(this._dioService);
  @override
  Future<PokerAPIv2> getAllDetails(String name) async {
    try {
      final response = await _dioService.getDio().get(ApiPokemonGo.allPokemonsV2 + name.toLowerCase());
      var pokemon = PokerAPIv2.fromJson(response.data);
      return pokemon;
    } catch (e) {
      throw Exception(e);
    }
  }
}