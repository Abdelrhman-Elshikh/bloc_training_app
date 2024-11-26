import 'package:bloc_training_app/presentation/screens/characters_screen.dart';
import 'package:bloc_training_app/utils/routers/routes.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(routes: [
  GoRoute(
    path: KCharactersScreen,
    builder: (context, state) => const CharactersScreen(),
  ),
  GoRoute(
    path: KDetailScreen,
    builder: (context, state) => const CharactersScreen(),
  )
]);
