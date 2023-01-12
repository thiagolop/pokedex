import 'package:flutter/material.dart';
import 'package:pokedex/core/pages/details/widgets/about_info_evolution_widget.dart';
import 'package:pokedex/core/pages/details/widgets/about_info_information_widget.dart';

import 'about_info_status_widget.dart';

class AboutInfoWidget extends StatefulWidget {
  final String namePokemon;
  final int numero;

  const AboutInfoWidget({
    Key? key,
    required this.namePokemon,
    required this.numero,
  }) : super(key: key);

  @override
  State<AboutInfoWidget> createState() => _AboutInfoWidgetState();
}

class _AboutInfoWidgetState extends State<AboutInfoWidget> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 389,
      left: 0,
      right: 0,
      height: 400,
      child: Container(
        color: Colors.black,
        child: Scaffold(
          appBar: TabBar(
            labelColor: Colors.black,
            controller: _tabController,
            tabs: const <Widget>[
              Tab(
                text: 'Information',
              ),
              Tab(
                text: 'Evolution',
              ),
              Tab(
                text: 'Status',
              ),
            ],
          ),
          body: TabBarView(
            controller: _tabController,
            children: <Widget>[
              AboutInfoInformationWidget(namePokemon: widget.namePokemon, numero: widget.numero),
              AboutInfoEvolutionWidget(numero: widget.numero),
              AboutInfoStatusWidget(namePokemon: widget.namePokemon),
            ],
          ),
        ),
      ),
    );
  }
}
