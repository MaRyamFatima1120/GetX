/*

import 'package:http/http.dart' as http;
import '../model/MakeupApiClass.dart';

class ApiService{

  Future<List<MakeupApiClass>> fetchMakeUpData() async{
    var response = await http.get(Uri.parse("https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie"));
    if(response.statusCode == 200){
      
    }
    else{
      throw Exception('Network Error');
    }
  }
}*/
