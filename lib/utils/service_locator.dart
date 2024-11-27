import 'package:bloc_training_app/data/apis/api_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
 
  getIt.registerSingleton(
    ApiService(),
  );

}
