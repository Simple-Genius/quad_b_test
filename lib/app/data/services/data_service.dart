import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:quad_b_test/app/modules/home/movie_model.dart';

class DataService extends GetxService {
  var url = "https://api.tvmaze.com/search/shows?q=all";

  void onInit() async {
    super.onInit();
    await getData();
  }

  getMovie() {}

  getData() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return Movie.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }
}
