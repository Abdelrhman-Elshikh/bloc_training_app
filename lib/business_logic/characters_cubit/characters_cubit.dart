import 'package:bloc/bloc.dart';
import '../../data/models/character/character_model.dart';
import '../../data/repositiries/character_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharacterRepo characterRepo;

  CharactersCubit(this.characterRepo) : super(CharactersInitial());

  List<CharacterModel> characters = [];

  Future fetchAllCharacters() async {
    emit(CharactersLoading());

    var result = await characterRepo.getAllCharacters();

    result.fold((failure) {
      emit(CharactersFailure(failure.errMessage));
    }, (characters) {
      this.characters = characters;
      emit(CharactersSuccess(characters));
    });
  }

  void showAllCharacters() {
    emit(CharactersSuccess(characters));
  }

  void searchingForCharacter(String searchPattern) {
    emit(
      CharactersSearching(
        characters.where((character) {
          return character.name!.toLowerCase().startsWith(
                searchPattern.toLowerCase(),
              );
        }).toList(),
      ),
    );
  }
}
