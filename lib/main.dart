import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lennin_app/pages/home.dart';

import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: getAppRoutes(),
        debugShowCheckedModeBanner: false,
        title: 'Lennin Store',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: EasySplashScreen(
          logo: Image.asset('assets/logo.jpeg'),
          logoSize: 100,
          backgroundColor: Colors.white,
          showLoader: true,
          loadingText: const Text("Cargando..."),
          loaderColor: Colors.black,
          navigator: const MyHomePage(),
          durationInSeconds: 3,
        ));
  }
}
