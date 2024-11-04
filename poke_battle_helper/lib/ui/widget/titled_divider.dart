import 'package:flutter/material.dart';

class TitledDivider extends StatelessWidget {
  final String title;
  const TitledDivider({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black38,
            ),
          ),
        ),
        const Expanded(
          child: Divider(),
        ),
      ],
    );
  }
}
