import 'dart:convert';

import 'package:pokedex/core/api/api_pokemon_go.dart';
import 'package:pokedex/core/models/pokemon_model.dart';
import 'package:pokedex/core/repositories/pokemon_repository.dart';

import '../service/dio_service.dart';

class PokemonRepositoryImp implements PokemonRepository {
  final DioService _dioService;
  PokemonRepositoryImp(this._dioService);

  @override
  Future<List<PokemonModel>> getAllPokemons() async {
    try {
      final response = await _dioService.getDio().get(ApiPokemonGo.allPokemons);
      final json = jsonDecode(response.data) as Map<String, dynamic>;
      final list = json['pokemon'] as List<dynamic>;
      return list.map((e) => PokemonModel.fromJson(e)).toList();
    } catch (e) {
      throw Exception(e);
    }
  }
}
