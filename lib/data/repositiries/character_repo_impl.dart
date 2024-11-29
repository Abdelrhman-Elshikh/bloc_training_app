import 'package:bloc_training_app/data/apis/api_service.dart';
import 'package:bloc_training_app/data/models/character/character_model.dart';
import 'package:bloc_training_app/data/repositiries/character_repo.dart';
import 'package:bloc_training_app/utils/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class CharacterRepoImpl implements CharacterRepo {
  final ApiService apiService;

  CharacterRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<CharacterModel>>> getAllCharacters() async {
    try {
      var data = await apiService.get(endPoint: '/character');

      List<CharacterModel> characters = [];
      for (var character in data["results"]) {
        characters.add(CharacterModel.fromJson(character));
      }

      return right(characters);
    } catch (err) {
      if (err is DioException) {
        return left(ServerFailure.fromDioError(err));
      }
      return left(ServerFailure(err.toString()));
    }
  }

  @override
  Future<Either<Failure, CharacterModel>> getMultipleCharacter() {
    // TODO: implement getMultipleCharacter
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, CharacterModel>> getSingleCharacter() {
    // TODO: implement getSingleCharacter
    throw UnimplementedError();
  }
}
