import '../models/pokemon_species_model.dart';

abstract class PokemonSpeciesRepository {
  Future<PokemonSpeciesModel> getAllSpeciesPokemons(String name);
}
