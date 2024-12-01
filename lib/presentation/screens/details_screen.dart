import 'package:bloc_training_app/data/models/character/character_model.dart';
import 'package:bloc_training_app/presentation/widgets/character_details_body.dart';
import 'package:bloc_training_app/utils/constances/custom_colors.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.character});

  final CharacterModel character;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.KGrey,
        body: SafeArea(child: CharacterDetailsBody(character: character)));
  }
}
