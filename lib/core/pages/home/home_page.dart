import 'package:flutter/material.dart';
import 'package:pokedex/core/models/pokemon_model.dart';
import 'package:pokedex/core/pages/details/container_details_page.dart';
import 'package:pokedex/core/pages/home/widgets/pokemon_item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required this.list,
    required this.onItemTap,
  }) : super(key: key);
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
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: MySearchdelegate(lista: list, pokemon: list[0], index: 0));
                },
                icon: const Icon(Icons.search, color: Colors.black))
          ],
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

class MySearchdelegate extends SearchDelegate<String> {
  final List<PokemonModel> lista;
  final PokemonModel pokemon;
  final int index;

  MySearchdelegate({required this.lista, required this.pokemon, required this.index});

  List getSuggestions(String query) {
    List<String> list = this.lista.map((e) => e.name).toList();
    List<String> matches = [];
    matches.addAll(list);
    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }

  @override
  List<Widget> buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            if (query.isEmpty) {
              close(context, '');
            } else {
              query = '';
            }
          },
        ),
      ];

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: const Icon(Icons.arrow_back), onPressed: () => close(context, ''));
  }

  @override
  buildResults(BuildContext context) async {
    return await Navigator.of(context).pushNamed('/details', arguments: DetailsArguments(pokemon: pokemon, index: index));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<dynamic> list = getSuggestions(query).where((element) {
      final result = element.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(list[index]),
          onTap: () {
            // query = list[index];
            showResults(context);
          },
        );
      },
    );
  }
}
