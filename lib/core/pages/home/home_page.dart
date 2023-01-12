import 'package:flutter/material.dart';
import 'package:pokedex/core/models/pokemon_model.dart';
import 'package:pokedex/core/pages/details/container_details_page.dart';
import 'package:pokedex/core/pages/home/widgets/pokemon_item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.list, required this.onItemTap}) : super(key: key);
  final List<PokemonModel> list;
  final Function(String, DetailsArguments) onItemTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Pokedex', style: TextStyle(color: Colors.black, fontSize: 32)),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search, color: Colors.black))],
        ),
        backgroundColor: Colors.white,
        body: GridView.count(
          physics: const BouncingScrollPhysics(),
          crossAxisCount: 2,
          crossAxisSpacing: 1,
          mainAxisSpacing: 8,
          children: list
              .map((e) => PokemonItemWidget(
                    pokemon: e,
                    onTap: onItemTap,
                    index: list.indexOf(e),
                  ))
              .toList(),
        ));
  }
}
