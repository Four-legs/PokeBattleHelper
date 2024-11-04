import 'package:flutter/material.dart';
import 'package:poke_battle_helper/ui/widget/type_icon.dart';

class PokemonInfoSprite extends StatelessWidget {
  final String pokemonId;
  final String firstTypeId;
  final String secondTypeId;
  const PokemonInfoSprite(
      {super.key,
      required this.pokemonId,
      required this.firstTypeId,
      required this.secondTypeId});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            alignment: Alignment.center,
            child: Image(
              image: AssetImage("assets/sprites/pokemons/$pokemonId.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Row(
              children: [
                TypeIcon(id: firstTypeId),
                TypeIcon(id: secondTypeId),
              ],
            ),
          )
        ],
      ),
    );
  }
}
