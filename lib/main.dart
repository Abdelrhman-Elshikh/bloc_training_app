import 'package:bloc_training_app/utils/routers/routers.dart';
import 'package:bloc_training_app/utils/service_locator.dart';
import 'package:flutter/material.dart';

void main() {
  setupServiceLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
