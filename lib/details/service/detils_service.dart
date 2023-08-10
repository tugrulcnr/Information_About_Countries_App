import 'package:about_countries/details/model/details_view.dart';
import 'package:dio/dio.dart';

class DetailsService {
  Dio _service = Dio();

  Future<List<DetailsModel>?> getData() async {
    final response = await _service.get("https://restcountries.com/v3.1/all");
    if(response.statusCode == 200){
      final data = response.data;
      if(data is List){
       // return DetailsModel.fromJson(data);
       return data.map((e) => DetailsModel.fromJson(e)).toList();
        
      }
    }
    
  }
  
}