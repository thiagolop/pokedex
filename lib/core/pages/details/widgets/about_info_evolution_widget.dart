import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/core/models/pokemon_evolution_model.dart';
import '../../../repositories/pokemon_evolution_repository.dart';
import '../../../repositories/pokemon_evolution_repository_imp.dart';
import '../../../service/dio_service_imp.dart';

class AboutInfoEvolutionWidget extends StatefulWidget {
  final int numero;

  const AboutInfoEvolutionWidget({Key? key, required this.numero}) : super(key: key);

  @override
  State<AboutInfoEvolutionWidget> createState() => _AboutInfoEvolutionWidgetState();
}

class _AboutInfoEvolutionWidgetState extends State<AboutInfoEvolutionWidget> {
  final PokemonEvolutionRepository _pokemonEvolutionRepository = PokemonEvolutionRepositoryImp(DioServiceImp());
  PokemonmEvolutionModel? pokemonEvolution;
  @override
  void initState() {
    super.initState();
    pegarEvolution();
  }

  @override
  void didUpdateWidget(covariant AboutInfoEvolutionWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.numero != widget.numero) {
      pegarEvolution();
    }
  }

  void pegarEvolution() async {
    final pokemonEvolutionModel = await _pokemonEvolutionRepository.getAllEvolution();
    setState(() {
      pokemonEvolution = pokemonEvolutionModel;
    });
  }

  Widget getImage({required String numero}) {
    return Center(
      child: SizedBox(
        height: 175,
        width: 175,
        child: CachedNetworkImage(
            placeholder: (context, url) => Container(
                  color: Colors.transparent,
                ),
            imageUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$numero.png'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var numeroo = widget.numero + 1;
    var numerooo = widget.numero + 2;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          getImage(numero: widget.numero.toString()),
          
        ],
      ),
    );
  }
}
