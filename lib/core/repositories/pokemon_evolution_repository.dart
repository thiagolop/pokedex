import '../models/pokemon_evolution_model.dart';

abstract class PokemonEvolutionRepository {
  Future<PokemonmEvolutionModel> getAllEvolution();
}
