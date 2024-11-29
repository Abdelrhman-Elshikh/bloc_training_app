import 'package:bloc_training_app/presentation/widgets/characters_body.dart';
import 'package:bloc_training_app/utils/constances/custom_colors.dart';
import 'package:flutter/material.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: CustomColors.KGrey,
        body: SafeArea(child: CharactersBody()));
  }
}
