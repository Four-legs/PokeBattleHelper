import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:poke_battle_helper/ui/screens/info/pokemon/pokemon_info_ability.dart';
import 'package:poke_battle_helper/ui/screens/info/pokemon/pokemon_info_sprite.dart';
import 'package:poke_battle_helper/ui/screens/info/pokemon/pokemon_info_stat.dart';
import 'package:poke_battle_helper/ui/widget/titled_divider.dart';

class PokemonInfoScreen extends StatelessWidget {
  const PokemonInfoScreen({super.key});

  onShowAbilities() {}
  onShowCalculator() {}

  @override
  Widget build(BuildContext context) {
    // final PokemonProvider pokemonProvider;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Name"),
          shadowColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              // basic information
              Flexible(
                flex: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // sprite
                    const Flexible(
                      flex: 1,
                      child: PokemonInfoSprite(
                        pokemonId: "0",
                        firstTypeId: "12",
                        secondTypeId: "4",
                      ),
                    ),
                    // type and calculator
                    Flexible(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Container(
                            alignment: Alignment.center,
                            child: const Text("방어 상성"),
                          )),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              const TitledDivider(title: "Ability"),

              // ability information
              Flexible(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  child: const PokemonInfoAbility(),
                ),
              ),
              const TitledDivider(title: "Stats"),
              // stat information
              const Flexible(
                flex: 4,
                fit: FlexFit.loose,
                child: PokemonInfoStat(),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                      onPressed: onShowAbilities,
                      child: const Text("Show Moves")),
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                      onPressed: onShowAbilities, child: const Text("Notes")),
                ),
              ),
            ],
          ),
        ));
  }
}
