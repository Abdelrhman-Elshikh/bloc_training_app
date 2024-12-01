import '../data/apis/api_service.dart';
import '../data/repositiries/character_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(),
  );

  getIt.registerSingleton<CharacterRepoImpl>(
      CharacterRepoImpl(getIt.get<ApiService>()));
}
