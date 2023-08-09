
import 'package:about_countries/restcountries/model/countries_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CountriesService {
  final _service = Dio();

  Future<List<CountriesModel>?> getData() async {
    final response = await _service.get("https://restcountries.com/v3.1/all");
    if(response.statusCode == 200){
      final data = response.data;
      if(data is List){
          return data.map((e) => CountriesModel.fromJson(e)).toList();
      }
    }
    return null;
  }
}
