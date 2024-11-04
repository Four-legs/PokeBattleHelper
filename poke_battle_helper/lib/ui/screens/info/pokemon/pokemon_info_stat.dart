import 'package:flutter/material.dart';
import 'package:poke_battle_helper/ui/widget/titled_outline_box.dart';

class PokemonInfoStat extends StatefulWidget {
  const PokemonInfoStat({super.key});

  @override
  State<PokemonInfoStat> createState() => _PokemonInfoStatState();
}

class _PokemonInfoStatState extends State<PokemonInfoStat> {
  int totalEffort = 510;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      shrinkWrap: true,
      childAspectRatio: 3 / 2,
      physics: const NeverScrollableScrollPhysics(),
      children: [for (var i = 1; i <= 6; i++) StatComponent(id: i.toString())],
    );
  }
}

class StatComponent extends StatefulWidget {
  final String id;
  const StatComponent({super.key, required this.id});

  @override
  State<StatComponent> createState() => _StatComponentState();
}

class _StatComponentState extends State<StatComponent> {
  bool isV = true; // true : V, false : Z
  bool addActive = true;
  bool subActive = false;
  int effort = 0;

  onSetValue() {}

  onSubEffort() {
    setState(() {
      effort -= 4;
    });
  }

  onAddEffort() {
    setState(() {
      effort += 4;
    });
  }

  getEffortValueAsString() {
    return effort.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      child: TitledOutlineBox(
        title: "HP",
        child: Column(
          children: [
            // Actual value
            Container(
              child: const Text(
                "100",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: IconButton(
                    onPressed: onSubEffort,
                    disabledColor: Colors.black26,
                    icon: const Icon(Icons.remove_circle),
                  ),
                ),
                Expanded(
                  child: Text(
                    '$effort',
                    textAlign: TextAlign.center,
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: IconButton(
                    onPressed: onAddEffort,
                    disabledColor: Colors.black26,
                    icon: const Icon(Icons.add_circle),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
