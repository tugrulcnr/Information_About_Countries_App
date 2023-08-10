import 'package:about_countries/details/view/detils_view.dart';
import 'package:about_countries/restcountries/model/countries_model.dart';
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
        itemCount: resources.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: InkWell(
              onTap:() {
                //TODO: 

                Navigator.push(context,MaterialPageRoute(builder: (context) =>DetailsView(index: index,)));
              },
              child: MyListTileMethod(index),
            ),
          );
        },
      ),
    );
  }

  ListTile MyListTileMethod(int index) {
    return ListTile(
              trailing: const Icon(Icons.arrow_right),
              leading:  SizedBox(
                width: 40,
                child: Image.network(resources[index].flags?.png.toString() ?? "https://flagcdn.com/w320/tr.png")),
              title: Text(resources[index].name?.common ?? "Empty Value"),
              subtitle: Text(resources[index].name?.official ?? "Empty Value"),
            );
  }
}
