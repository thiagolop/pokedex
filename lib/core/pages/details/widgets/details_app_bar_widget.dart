import 'package:flutter/material.dart';
import 'package:pokedex/core/models/pokemon_model.dart';

class DetailsAppBarWidget extends StatelessWidget {
  const DetailsAppBarWidget({Key? key, required this.pokemon}) : super(key: key);
  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: AppBar(
        elevation: 0,
        backgroundColor: pokemon.baseColor,
      ),
    );
  }
}
