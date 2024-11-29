import 'package:bloc_training_app/business_logic/characters_cubit/characters_cubit.dart';
import 'package:bloc_training_app/utils/constances/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchingAppBar extends StatefulWidget {
  const SearchingAppBar({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  State<SearchingAppBar> createState() => _SearchingAppBarState();
}

class _SearchingAppBarState extends State<SearchingAppBar> {
  final TextEditingController textController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(color: CustomColors.KYellow),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          BackButton(
            onPressed: () {
              textController.clear;
              BlocProvider.of<CharactersCubit>(context).showAllCharacters();

              widget.onPressed!();
            },
          ),
          Expanded(
              child: TextField(
            controller: textController,
            onChanged: (value) {
              BlocProvider.of<CharactersCubit>(context)
                  .searchingForCharacter(value);
            },
          )),
          IconButton(
            alignment: Alignment.centerRight,
            onPressed: textController.clear,
            icon: const Icon(
              Icons.clear,
            ),
          ),
        ],
      ),
    );
  }
}
