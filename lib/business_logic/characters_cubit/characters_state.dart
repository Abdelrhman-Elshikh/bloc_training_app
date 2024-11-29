part of 'characters_cubit.dart';

@immutable
sealed class CharactersState extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

final class CharactersInitial extends CharactersState {}

final class CharactersLoading extends CharactersState {}

final class CharactersSuccess extends CharactersState {
  final List<CharacterModel> characters;

  CharactersSuccess(this.characters);

  @override
  List<Object?> get props => [characters];
}

final class CharactersFailure extends CharactersState {
  final String errorMassage;

  CharactersFailure(this.errorMassage);

  @override
  List<Object?> get props => [errorMassage];
}
