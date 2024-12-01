import 'package:bloc_training_app/business_logic/characters_cubit/characters_cubit.dart';
import 'package:bloc_training_app/data/models/character/character_model.dart';
import 'package:bloc_training_app/data/repositiries/character_repo_impl.dart';
import 'package:bloc_training_app/presentation/screens/characters_screen.dart';
import 'package:bloc_training_app/presentation/screens/details_screen.dart';
import 'package:bloc_training_app/utils/routers/routes.dart';
import 'package:bloc_training_app/utils/service_locator.dart';
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
