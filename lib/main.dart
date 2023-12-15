import 'package:app_laboflutter/Screens/Screens.dart';
import 'package:app_laboflutter/Themes/Default_Theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App labo',
        theme: DefaultTheme.defaultTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home': (context) => HomeScreen(),
          'favorita': (context) => PeliculaFavorita(),
          'recomendada': (context) => PeliculaRecomendada(),
          'favorita_TvSeries': (context) => TvSeriesFavorita(),
          'recomendada_TvSeries': (context) => TvSeriesRecomendada()
        });
  }
}
