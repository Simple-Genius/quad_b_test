import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DataService extends GetxService {
  var url = "https://api.tvmaze.com/search/shows?q=all";

  void onInit() async {
    super.onInit();
    await getData();
  }

  getMovie() {}

  getData() async {
    final response = await http.get(Uri.parse(url));
    //print(response.body);
    return response.body;
  }
}
