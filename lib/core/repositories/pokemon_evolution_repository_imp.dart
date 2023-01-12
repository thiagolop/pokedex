import 'package:pokedex/core/models/pokemon_evolution_model.dart';
import 'package:pokedex/core/repositories/pokemon_evolution_repository.dart';

import '../api/api_pokemon_go.dart';
import '../service/dio_service.dart';

class PokemonEvolutionRepositoryImp implements PokemonEvolutionRepository {
  final DioService _dioService;

  PokemonEvolutionRepositoryImp(this._dioService);
  @override
  Future<PokemonmEvolutionModel> getAllEvolution() async {
    try {
      final response = await _dioService.getDio().get(ApiPokemonGo.pokeapiEvolutionURL);
      return PokemonmEvolutionModel.fromJson(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }
}
