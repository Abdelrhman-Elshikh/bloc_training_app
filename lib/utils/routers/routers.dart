import '../../business_logic/characters_cubit/characters_cubit.dart';
import '../../data/models/character/character_model.dart';
import '../../data/repositiries/character_repo_impl.dart';
import '../../presentation/screens/characters_screen.dart';
import '../../presentation/screens/details_screen.dart';
import 'routes.dart';
import '../service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(routes: [
  GoRoute(
    path: KCharactersScreen,
    builder: (context, state) => BlocProvider(
        create: (context) => CharactersCubit(getIt.get<CharacterRepoImpl>()),
        child: const CharactersScreen()),
  ),
  GoRoute(
      path: KDetailScreen,
      builder: (context, state) {
        final character = state.extra! as CharacterModel;
        return DetailsScreen(character: character);
      }),
]);
