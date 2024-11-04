import 'package:flutter/material.dart';

class PokemonInfoAbility extends StatelessWidget {
  const PokemonInfoAbility({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AbilityComponent(
            isHidden: false,
            abilityName: "심록",
          ),
          AbilityComponent(
            isHidden: true,
            abilityName: "엽록소",
          ),
        ],
      ),
    );
  }
}

class AbilityComponent extends StatelessWidget {
  final bool isHidden;
  final String abilityName;
  const AbilityComponent(
      {super.key, required this.isHidden, required this.abilityName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      child: Chip(
        backgroundColor: Theme.of(context).colorScheme.primary,
        label: Row(
          children: [
            Text(
              abilityName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
