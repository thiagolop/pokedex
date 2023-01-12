import 'package:pokedex/core/models/pokemon_model.dart';

abstract class PokemonRepository {
  Future<List<PokemonModel>> getAllPokemons();
}
