import 'package:flutter/material.dart';

class SearchInputWidget extends StatelessWidget {
  const SearchInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            labelText: "Search!",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            suffixIcon: const Icon(Icons.filter_alt),
          ),
        ),
      ),
    );
  }
}
