import 'package:bloc_training_app/data/models/character/character_model.dart';
import 'package:bloc_training_app/utils/constances/custom_colors.dart';
import 'package:flutter/material.dart';

class CharacterItem extends StatelessWidget {
  final CharacterModel character;
  const CharacterItem({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: CustomColors.KWhite,
      child: GridTile(
        footer: Container(
          color: Colors.black45,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          alignment: Alignment.bottomCenter,
          child: Text(
            character.name ?? '',
            style: const TextStyle(
              height: 1.3,
              fontSize: 16,
              color: CustomColors.KWhite,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
        child: character.image != null
            ? FadeInImage.assetNetwork(
                placeholder: 'assets/images/loading.gif',
                image: character.image!, 
                fit: BoxFit.cover,)
            : Image.asset('assets/images/place_holder.jpg'),
      ),
    );
  }
}
