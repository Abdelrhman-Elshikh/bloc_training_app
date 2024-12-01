import 'package:bloc_training_app/data/models/character/character_model.dart';
import 'package:bloc_training_app/utils/constances/custom_colors.dart';
import 'package:bloc_training_app/utils/routers/routers.dart';
import 'package:bloc_training_app/utils/routers/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CharacterItem extends StatelessWidget {
  final CharacterModel character;
  const CharacterItem({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(KDetailScreen, extra: character);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: CustomColors.KWhite,
        ),
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: GridTile(
                footer: Container(
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(10.0)),
                    color: Colors.black45,
                  ),
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                child: Hero(
                  tag: character.id!,
                  child: Container(
                    child: character.image != null
                        ? FadeInImage.assetNetwork(
                            placeholder: 'assets/images/loading.gif',
                            image: character.image!,
                            fit: BoxFit.cover,
                          )
                        : Image.asset('assets/images/place_holder.jpg'),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
