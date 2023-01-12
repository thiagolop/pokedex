// ignore_for_file: prefer_conditional_assignment

import 'package:flutter/material.dart';
import 'package:pokedex/core/pages/details/details_page.dart';
import '../../models/pokemon_model.dart';
import '../../repositories/pokemon_repository.dart';
import '../../repositories/pokemon_repository_imp.dart';
import '../../service/dio_service_imp.dart';
import '../home/home_error.dart';
import '../home/home_loading.dart';
import '../home/home_mesage_error.dart';

class ContainerDetailsPage extends StatefulWidget {
  const ContainerDetailsPage({
    Key? key,
    required this.arguments,
  }) : super(key: key);
  final DetailsArguments arguments;

  @override
  State<ContainerDetailsPage> createState() => _ContainerDetailsPageState();
}

class _ContainerDetailsPageState extends State<ContainerDetailsPage> {
  final PokemonRepository _pokemonRepository = PokemonRepositoryImp(DioServiceImp());
  late PageController _pageController;
  PokemonModel? _pokemon;
  late Future<List<PokemonModel>> _future;
  @override
  void initState() {
    _pageController = PageController(
      viewportFraction: 0.5,
      initialPage: widget.arguments.index ?? 0,
    );
    _future = _pokemonRepository.getAllPokemons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
      future: _future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const HomeLoading();
        }
        if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
          if (_pokemon == null) {
            _pokemon = widget.arguments.pokemon;
          }
          return DetailsPage(
            pokemon: _pokemon!,
            list: snapshot.data!,
            pageController: _pageController,
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

class DetailsArguments {
  final PokemonModel pokemon;
  final int? index;

  DetailsArguments({this.index = 0, required this.pokemon});
}
