import 'package:flutter/material.dart';
import 'package:poke_battle_helper/ui/screens/info/pokemon/pokemon_info_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: PokemonInfoScreen());
  }
}
