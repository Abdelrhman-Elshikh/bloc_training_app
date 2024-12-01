import '../apis/api_service.dart';
import '../models/character/character_model.dart';
import 'character_repo.dart';
import '../../utils/failure.dart';
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
