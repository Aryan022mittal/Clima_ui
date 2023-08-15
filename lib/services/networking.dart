import 'package:http/http.dart' as http;
import 'dart:convert';

const apikey = '990461df91eef30f3e1ea570f346f23f';

class NetworkHelper{
  NetworkHelper(this.url);
  final String url;
  Future getData()async{
    final response =await http.get(Uri.parse(url));
    if(response.statusCode==200){
      String data = response.body;
      return jsonDecode(data);

    }
    else{
      print(response.statusCode);
    }
  }
}