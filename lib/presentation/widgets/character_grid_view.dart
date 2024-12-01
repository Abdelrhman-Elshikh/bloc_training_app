import '../../data/models/character/character_model.dart';
import 'character_item.dart';
import 'package:flutter/material.dart';

class CharacterGridView extends StatelessWidget {
  final List<CharacterModel> characters;
  const CharacterGridView({super.key, required this.characters});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        
        ),
        itemCount: characters.length,
        itemBuilder: (context, index) {
          return CharacterItem(
            character: characters[index],
          );
        });
  }
}
