import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/core/service/dio_service_imp.dart';
import '../../../models/poker_api_v2.dart';
import '../../../repositories/pokemonv2_repository_imp.dart';

class AboutInfoStatusWidget extends StatefulWidget {
  final String namePokemon;

  const AboutInfoStatusWidget({
    Key? key,
    required this.namePokemon,
  }) : super(key: key);

  @override
  State<AboutInfoStatusWidget> createState() => _AboutInfoStatusWidgetState();
}

class _AboutInfoStatusWidgetState extends State<AboutInfoStatusWidget> {
  final Pokemonv2RepositoryImp _pokemonRepositoryV2 = Pokemonv2RepositoryImp(DioServiceImp());
  PokerAPIv2? pokemonv2;

  @override
  void initState() {
    super.initState();
    pegarInfoStatus();
  }

  void pegarInfoStatus() async {
    final pokemonInfo = await _pokemonRepositoryV2.getAllDetails(widget.namePokemon);
    setState(() {
      pokemonv2 = pokemonInfo;
    });
  }

  @override
  void didUpdateWidget(covariant AboutInfoStatusWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.namePokemon != widget.namePokemon) {
      pegarInfoStatus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: SizedBox(
        height: 200,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Speed', style: GoogleFonts.lato(color: Colors.black, fontSize: 20, fontStyle: FontStyle.italic)),
                const SizedBox(height: 10),
                Text('S. Defense', style: GoogleFonts.lato(color: Colors.black, fontSize: 20, fontStyle: FontStyle.italic)),
                const SizedBox(height: 10),
                Text('S. Attack', style: GoogleFonts.lato(color: Colors.black, fontSize: 20, fontStyle: FontStyle.italic)),
                const SizedBox(height: 10),
                Text('Defense', style: GoogleFonts.lato(color: Colors.black, fontSize: 20, fontStyle: FontStyle.italic)),
                const SizedBox(height: 10),
                Text('Attack', style: GoogleFonts.lato(color: Colors.black, fontSize: 20, fontStyle: FontStyle.italic)),
                const SizedBox(height: 10),
                Text('HP', style: GoogleFonts.lato(color: Colors.black, fontSize: 20, fontStyle: FontStyle.italic)),
                const SizedBox(height: 10),
              ],
            ),
            const SizedBox(width: 10),
            Column(
              children: [
                Text(pokemonv2?.stats?[5].baseStat.toString() ?? '00', style: GoogleFonts.lato(color: Colors.red, fontSize: 20, fontStyle: FontStyle.italic)),
                const SizedBox(height: 10),
                Text(pokemonv2?.stats?[4].baseStat.toString() ?? '00', style: GoogleFonts.lato(color: Colors.red, fontSize: 20, fontStyle: FontStyle.italic)),
                const SizedBox(height: 10),
                Text(pokemonv2?.stats?[3].baseStat.toString() ?? '00', style: GoogleFonts.lato(color: Colors.red, fontSize: 20, fontStyle: FontStyle.italic)),
                const SizedBox(height: 10),
                Text(pokemonv2?.stats?[2].baseStat.toString() ?? '00', style: GoogleFonts.lato(color: Colors.red, fontSize: 20, fontStyle: FontStyle.italic)),
                const SizedBox(height: 10),
                Text(pokemonv2?.stats?[1].baseStat.toString() ?? '00', style: GoogleFonts.lato(color: Colors.red, fontSize: 20, fontStyle: FontStyle.italic)),
                const SizedBox(height: 10),
                Text(pokemonv2?.stats?[0].baseStat.toString() ?? '00', style: GoogleFonts.lato(color: Colors.red, fontSize: 20, fontStyle: FontStyle.italic)),
                const SizedBox(height: 10),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  StatusBar(widthFactor: pokemonv2?.stats?[5].baseStat!.toDouble() ?? 0.0),
                  const SizedBox(height: 10),
                  StatusBar(widthFactor: pokemonv2?.stats?[4].baseStat!.toDouble() ?? 0.0),
                  const SizedBox(height: 10),
                  StatusBar(widthFactor: pokemonv2?.stats?[3].baseStat!.toDouble() ?? 0.0),
                  const SizedBox(height: 10),
                  StatusBar(widthFactor: pokemonv2?.stats?[2].baseStat!.toDouble() ?? 0.0),
                  const SizedBox(height: 10),
                  StatusBar(widthFactor: pokemonv2?.stats?[1].baseStat!.toDouble() ?? 0.0),
                  const SizedBox(height: 10),
                  StatusBar(widthFactor: pokemonv2?.stats?[0].baseStat!.toDouble() ?? 0.0),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StatusBar extends StatelessWidget {
  final double widthFactor;
  const StatusBar({
    Key? key,
    required this.widthFactor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 21,
      child: Center(
        child: Container(
          height: 4,
          width: MediaQuery.of(context).size.width * 0.5,
          alignment: Alignment.centerLeft,
          decoration: const ShapeDecoration(shape: StadiumBorder(), color: Colors.grey),
          child: SizedBox(
            height: double.infinity,
            child: FractionallySizedBox(
              widthFactor: widthFactor / 150,
              heightFactor: 1.0,
              child: Container(
                decoration: const ShapeDecoration(shape: StadiumBorder(), color: Colors.red),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
