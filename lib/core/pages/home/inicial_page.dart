import 'package:flutter/material.dart';
import 'package:pokedex/core/models/pokemon_model.dart';
import 'package:pokedex/core/pages/home/home_loading.dart';
import 'package:pokedex/core/pages/home/home_mesage_error.dart';
import 'package:pokedex/core/pages/home/home_page.dart';
import '../../repositories/pokemon_repository.dart';
import '../../repositories/pokemon_repository_imp.dart';
import '../../service/dio_service_imp.dart';
import '../details/container_details_page.dart';
import 'home_error.dart';

class InicialPage extends StatelessWidget {
  InicialPage({
    Key? key, required this.onItemTap,
  }) : super(key: key);
  final PokemonRepository _pokemonRepository = PokemonRepositoryImp(DioServiceImp());
  final Function(String, DetailsArguments) onItemTap;



  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
      future: _pokemonRepository.getAllPokemons(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const HomeLoading();
        }
        if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
          return HomePage(
            list: snapshot.data!,
            onItemTap: onItemTap,
          
          );
        }
        if (snapshot.hasError) {
          return HomeError(errormessage: snapshot.error.toString());
        } else {
          return const HomeMesageError();
        }
      },
    );
  }
}
