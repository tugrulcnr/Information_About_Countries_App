import 'package:flutter/material.dart';

import 'restcountries/view/countries_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ).copyWith(
        appBarTheme: AppBarTheme(backgroundColor: Color.fromARGB(255, 93, 100, 103))
      ),
      home: CountriesView(),
    );
  }
}
