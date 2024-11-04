import 'package:flutter/widgets.dart';

class PokemonInfoType extends StatelessWidget {
  final String id;
  const PokemonInfoType({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Image(
          image: AssetImage("assets/sprites/types/$id.png"),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
