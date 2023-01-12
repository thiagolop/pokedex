import 'package:flutter/material.dart';
import 'package:pokedex/core/models/pokemon_model.dart';
import 'package:pokedex/core/pages/details/widgets/about_info_widget.dart';
import 'package:pokedex/core/pages/details/widgets/details_app_bar_widget.dart';
import 'package:pokedex/core/pages/details/widgets/detaisl_list_widgets.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key, required this.pokemon, required this.list, required this.pageController, }) : super(key: key);
  final PokemonModel pokemon;
  final List<PokemonModel> list;
  final PageController pageController;
  
  

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  PokemonModel? pokemonSelected;
  @override
  void initState() {
    super.initState();
    setState(() {
      pokemonSelected = widget.pokemon;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (pokemonSelected == null) return const CircularProgressIndicator();
    return Scaffold(
      body: Stack(
        children: [
          DetailsAppBarWidget(pokemon: pokemonSelected!),
          DetaislListWidgets(
            index: pokemonSelected!.id ,
            namePokemon: pokemonSelected!.name,
            pokemon: pokemonSelected!,
            list: widget.list,
            pageController: widget.pageController,
            onchangePokemon: (pokemon) {
              setState(() {
                pokemonSelected = pokemon;
              });
            },
          ),
          AboutInfoWidget(
            namePokemon: pokemonSelected!.name,
            numero: pokemonSelected!.id,

          )
        ],
      ),
    );
  }
}
