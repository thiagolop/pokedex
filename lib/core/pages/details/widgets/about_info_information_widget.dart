import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/core/repositories/pokemon_species_repository.dart';
import '../../../models/pokemon_species_model.dart';
import '../../../models/poker_api_v2.dart';
import '../../../repositories/pokemon_species_repository_imp.dart';
import '../../../repositories/pokemonv2_repository.dart';
import '../../../repositories/pokemonv2_repository_imp.dart';
import '../../../service/dio_service_imp.dart';

class AboutInfoInformationWidget extends StatefulWidget {
  final String namePokemon;
  final int numero;

  const AboutInfoInformationWidget({
    Key? key,
    required this.namePokemon,
    required this.numero,
  }) : super(key: key);

  @override
  State<AboutInfoInformationWidget> createState() => _AboutInfoInformationWidgetState();
}

class _AboutInfoInformationWidgetState extends State<AboutInfoInformationWidget> {
  final PokemonSpeciesRepository _pokemonSpeciesRepository = PokemonSpeciesRepositoryImp(DioServiceImp());
  final PokemonRepositoryV2 _pokemonRepositoryv2 = Pokemonv2RepositoryImp(DioServiceImp());
  PokemonSpeciesModel? pokemonSpecies;
  PokerAPIv2? pokemonv2;

  @override
  void initState() {
    super.initState();
    pegarInfoPokemonSpecies();
    pegarpokemonv2();
  }

  @override
  void didUpdateWidget(covariant AboutInfoInformationWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.namePokemon != widget.namePokemon) {
      pegarInfoPokemonSpecies();
      pegarpokemonv2();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Descrição',
            style: GoogleFonts.lato(color: Colors.black, fontSize: 40, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                pokemonSpecies?.flavorTextEntries.where((drescricao) => drescricao.language.name == 'en').first.flavorText ?? 'Carregando...',
                style: GoogleFonts.lato(color: Colors.black, fontSize: 20, fontStyle: FontStyle.italic),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            pokemonSpecies?.flavorTextEntries.where((drescricao) => drescricao.language.name == 'en').last.flavorText ?? 'Carregando...',
            style: GoogleFonts.lato(color: Colors.black, fontSize: 20, fontStyle: FontStyle.italic),
          ),
          const SizedBox(height: 10),
          Text(
            pokemonSpecies?.flavorTextEntries.where((drescricao) => drescricao.language.name == 'es').first.flavorText ?? 'Carregando...',
            style: GoogleFonts.lato(color: Colors.black, fontSize: 20, fontStyle: FontStyle.italic),
          ),
          const SizedBox(height: 10),
          Text(
            pokemonSpecies?.flavorTextEntries.where((drescricao) => drescricao.language.name == 'es').last.flavorText ?? 'Carregando...',
            style: GoogleFonts.lato(color: Colors.black, fontSize: 20, fontStyle: FontStyle.italic),
          ),
          const SizedBox(height: 10),
          Text(
            'Biologia',
            style: GoogleFonts.lato(color: Colors.black, fontSize: 40, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'Weight:        ${pokemonv2?.weight} Kg',
            style: GoogleFonts.lato(color: Colors.black, fontSize: 20, fontStyle: FontStyle.italic),
          ),
          const SizedBox(height: 5),
          Text(
            'Height:        ${pokemonv2?.height} m',
            style: GoogleFonts.lato(color: Colors.black, fontSize: 20, fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }

  void pegarInfoPokemonSpecies() async {
    final pokemonInfo = await _pokemonSpeciesRepository.getAllSpeciesPokemons(widget.namePokemon);
    setState(() {
      pokemonSpecies = pokemonInfo;
    });
  }

  void pegarpokemonv2() async {
    final pokemonInfo = await _pokemonRepositoryv2.getAllDetails(widget.namePokemon);
    setState(() {
      pokemonv2 = pokemonInfo;
    });
  }
}
