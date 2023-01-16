import 'package:flutter/material.dart';
import 'evolution.dart';

class AboutInfoEvolutionWidget extends StatefulWidget {
  final int numero;

  const AboutInfoEvolutionWidget({Key? key, required this.numero}) : super(key: key);

  @override
  State<AboutInfoEvolutionWidget> createState() => _AboutInfoEvolutionWidgetState();
}

class _AboutInfoEvolutionWidgetState extends State<AboutInfoEvolutionWidget> {
   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Center(
        child: Evolution(
          numero: widget.numero,
        ),
      ),
    );
  }
}
