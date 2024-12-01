import '../models/character/character_model.dart';
import '../../utils/failure.dart';
import 'package:dartz/dartz.dart';

abstract class CharacterRepo {
  Future<Either<Failure, List<CharacterModel>>> getAllCharacters();
  Future<Either<Failure, CharacterModel>> getSingleCharacter();
  Future<Either<Failure, CharacterModel>> getMultipleCharacter();
}
