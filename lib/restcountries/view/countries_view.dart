import 'package:about_countries/restcountries/view_model/countries_view_model.dart';
import 'package:flutter/material.dart';

class CountriesView extends StatefulWidget {
  const CountriesView({super.key});

  @override
  State<CountriesView> createState() => _CountriesViewState();
}

class _CountriesViewState extends CountriesViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: resources.length ,
        itemBuilder: (BuildContext context, int index) {
          return Text(resources[index].name?.common ?? "adfas");
        },
      ),
    );
  }
}