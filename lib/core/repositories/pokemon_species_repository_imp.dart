import 'package:pokedex/core/api/api_pokemon_go.dart';
import 'package:pokedex/core/models/pokemon_species_model.dart';
import 'package:pokedex/core/repositories/pokemon_species_repository.dart';
import '../service/dio_service.dart';

class PokemonSpeciesRepositoryImp implements PokemonSpeciesRepository {
  final DioService _dioService;
  PokemonSpeciesRepositoryImp(this._dioService);

  @override
  Future<PokemonSpeciesModel> getAllSpeciesPokemons(String name) async {
    String url = '${ApiPokemonGo.pokeapiv2EspeciesURL}${name.toLowerCase()}';
    try {
      final response = await _dioService.getDio().get(url);
      return PokemonSpeciesModel.fromJson(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }
}
