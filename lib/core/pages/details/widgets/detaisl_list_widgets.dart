import 'package:flutter/material.dart';
import 'package:pokedex/core/models/pokemon_model.dart';

class DetaislListWidgets extends StatefulWidget {
  const DetaislListWidgets({
    Key? key,
    required this.pokemon,
    required this.list,
    required this.pageController,
    required this.onchangePokemon,
    required this.namePokemon,
    required this.index,
  }) : super(key: key);
  final PokemonModel pokemon;
  final List<PokemonModel> list;
  final PageController pageController;
  final ValueChanged<PokemonModel> onchangePokemon;
  final String namePokemon;
  final int index;

  @override
  State<DetaislListWidgets> createState() => _DetaislListWidgetsState();
}

class _DetaislListWidgetsState extends State<DetaislListWidgets> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 89,
      left: 0,
      right: 0,
      height: 300,
      child: Container(
        color: widget.pokemon.baseColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      widget.pokemon.name.toString(),
                      style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                  Text(
                    widget.pokemon.num.toString(),
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: PageView(
                onPageChanged: (index) {
                  widget.onchangePokemon(widget.list[index]);
                },
                controller: widget.pageController,
                children: widget.list.map((e) {
                  bool different = e.name != widget.pokemon.name;
                  return AnimatedOpacity(
                    duration: const Duration(milliseconds: 300),
                    opacity: different ? 0.4 : 1,
                    child: TweenAnimationBuilder<double>(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                      tween: Tween<double>(begin: different ? 300 : 100, end: different ? 100 : 300),
                      builder: (context, value, child) {
                        return Center(
                          child: Image.network(
                            e.image,
                            width: value,
                            fit: BoxFit.contain,
                            color: different ? Colors.black.withOpacity(0.4) : null,
                          ),
                        );
                      },
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
