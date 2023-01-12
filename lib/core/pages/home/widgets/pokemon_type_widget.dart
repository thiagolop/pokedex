import 'package:flutter/material.dart';

class PokemonTypeWidget extends StatelessWidget {
  const PokemonTypeWidget({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(name, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold));
  }
}
