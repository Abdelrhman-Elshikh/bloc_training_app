import 'package:bloc_training_app/business_logic/characters_cubit/characters_cubit.dart';
import 'package:bloc_training_app/data/models/character/character_model.dart';
import 'package:bloc_training_app/presentation/widgets/character_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersBody extends StatelessWidget {
  const CharactersBody({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CharactersCubit>(context).fetchAllCharacters();
    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        if (state is CharactersSuccess && state is CharactersFailure) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is CharactersSuccess) {
          return CharacterGridView(characters: state.characters);
        } else if (state is CharactersFailure) {
          return Center(child: Text(state.errorMassage));
        } else {
          return const Center(child: Text('opps'));
        }
      },
    );
  }
}
