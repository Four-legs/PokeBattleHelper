import 'package:flutter/material.dart';

class PokemonListItem extends StatelessWidget {
  final String id;
  const PokemonListItem({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AspectRatio(
            aspectRatio: 1 / 1,
            child: Image(
              image: AssetImage("assets/sprites/pokemons/$id.png"),
            ),
          ),
          const Text("Name"),
        ],
      ),
    );
  }
}
