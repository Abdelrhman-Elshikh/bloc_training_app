import 'package:bloc_training_app/data/models/character/character_model.dart';
import 'package:bloc_training_app/utils/failure.dart';
import 'package:dartz/dartz.dart';

abstract class CharacterRepo {
  Future<Either<Failure, List<CharacterModel>>> getAllCharacters();
  Future<Either<Failure, CharacterModel>> getSingleCharacter();
  Future<Either<Failure, CharacterModel>> getMultipleCharacter();
}
