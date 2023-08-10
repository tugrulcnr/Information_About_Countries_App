import 'package:about_countries/restcountries/model/countries_model.dart';
import 'package:about_countries/restcountries/service/countries_service.dart';
import 'package:about_countries/restcountries/view/countries_view.dart';
import 'package:flutter/material.dart';

abstract class CountriesViewModel extends State<CountriesView>{

  late final CountriesService countriesService;
  List<CountriesModel> resources = [];

  @override
  void initState() {
    super.initState();
    countriesService = CountriesService();
    fetchData();
  }

  Future<void> fetchData() async {
    resources = await countriesService.getData() ?? [];
    setState(() {});
  }
  
}