import 'package:about_countries/details/model/details_view.dart';
import 'package:about_countries/details/service/detils_service.dart';
import 'package:flutter/material.dart';
import 'package:about_countries/details/view/detils_view.dart';

abstract class DetailsModelView extends State<DetailsView>{

  late final DetailsService detailsService;
  List<DetailsModel> detailsModel = [];

  bool isloaded = true;

  @override
  void initState() {
    super.initState();
    detailsService = DetailsService();
    fetchData();
  }


  Future<void> fetchData() async {
    changeView();
    detailsModel = await detailsService.getData() ?? [];
    changeView();
    setState(() {});
  }


  void changeView() {
    isloaded = !isloaded;
  }



  
  
}