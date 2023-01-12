import 'package:flutter/material.dart';
import 'package:pokedex/core/pages/home/inicial_page.dart';
import '../pages/details/container_details_page.dart';

class PokedexRoutes extends StatelessWidget {
  const PokedexRoutes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) => InicialPage(
                onItemTap: (route, argument) {
                  Navigator.of(context).pushNamed(route, arguments: argument);
                },
              ),
            );
          case '/details':
            return MaterialPageRoute(
              builder: (context) => ContainerDetailsPage(
                arguments: (settings.arguments as DetailsArguments),
              ),
            );
          // case '/pokemon':
          //   return MaterialPageRoute(
          //     builder: (context) => PokemonPage(),
          //   );
          // default:
          //   return MaterialPageRoute(
          //     builder: (context) => HomePage(),
          //   );
        }
        return null;
      },
    );
  }
}
