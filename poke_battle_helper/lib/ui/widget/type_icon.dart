import 'package:flutter/material.dart';

class TypeIcon extends StatelessWidget {
  final String id;
  const TypeIcon({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      width: 30.0,
      height: 30.0,
      alignment: Alignment.center,
      child: AspectRatio(
        aspectRatio: 1 / 1,
        child: Image(
          image: AssetImage("assets/icons/$id.png"),
        ),
      ),
    );
  }
}
