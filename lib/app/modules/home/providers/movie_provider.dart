import 'package:get/get.dart';

import '../movie_model.dart';

class MovieProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Movie.fromJson(map);
      if (map is List) return map.map((item) => Movie.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Movie?> getMovie(int id) async {
    final response = await get('movie/$id');
    return response.body;
  }

  Future<Response<Movie>> postMovie(Movie movie) async =>
      await post('movie', movie);
  Future<Response> deleteMovie(int id) async => await delete('movie/$id');
}
