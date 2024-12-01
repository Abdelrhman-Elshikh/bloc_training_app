import '../../business_logic/characters_cubit/characters_cubit.dart';
import 'character_grid_view.dart';
import 'custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersBody extends StatelessWidget {
  const CharactersBody({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CharactersCubit>(context).fetchAllCharacters();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const CustomAppBar(),
        Expanded(
          child: BlocBuilder<CharactersCubit, CharactersState>(
            builder: (context, state) {
              if (state is CharactersLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is CharactersSuccess) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CharacterGridView(characters: state.characters),
                );
              } else if (state is CharactersSearching) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CharacterGridView(characters: state.characters),
                );
              } else if (state is CharactersFailure) {
                return Center(child: Text(state.errorMassage));
              } else {
                return const Center(child: Text('opps'));
              }
            },
          ),
        ),
      ],
    );
  }
}
