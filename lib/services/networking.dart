import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url); //calling api with the help of http method
    //this url contains latitude,longitude,api key. we are paasing these parameters to api and in return it will supply json file containing weather

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);//used to convert json data into readable data
    } else {
      print(response.statusCode);
    }
  }
}
