import 'package:flutter/material.dart';
import 'package:pokedex/core/models/pokemon_model.dart';
import 'package:pokedex/core/pages/details/container_details_page.dart';
import 'package:pokedex/core/pages/home/widgets/pokemon_type_widget.dart';

class PokemonItemWidget extends StatefulWidget {
  const PokemonItemWidget({Key? key, required this.pokemon, required this.onTap, required this.index}) : super(key: key);
  final PokemonModel pokemon;
  final Function(String, DetailsArguments) onTap;
  final int index;

  @override
  State<PokemonItemWidget> createState() => _PokemonItemWidgetState();
}

class _PokemonItemWidgetState extends State<PokemonItemWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onTap(
        '/details',
        DetailsArguments(pokemon: widget.pokemon, index: widget.index),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Container(
          decoration: BoxDecoration(
            color: widget.pokemon.baseColor!.withOpacity(0.9),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 6.0, bottom: 6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(widget.pokemon.name, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(widget.pokemon.num, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
                Flexible(
                    child: Image.network(
                  widget.pokemon.image,
                  errorBuilder: (context, error, stackTrace) => Image.asset('assets/padrao.jpg'),
                  loadingBuilder: (context, child, loadingProgress) {
                    return loadingProgress == null ? child : Center(child: Image.asset('assets/logo.jpg'));
                  },
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: widget.pokemon.type.map((e) => PokemonTypeWidget(name: e)).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
