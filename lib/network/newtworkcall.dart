import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mymovies/model/movie.dart';

Future<List<Movie>> fetchAllMovies() async {
  var url = Uri.parse(
      "https://api.themoviedb.org/3/list/1?api_key=a1d0d14fa2dc2c859fa137ef96e58955");
  final response = await http.get(url);

  if (response.statusCode == 200) {
    final result = jsonDecode(response.body);

    Iterable list = result["items"];

    return list.map((movie) => Movie.fromJson(movie)).toList();
  } else {
    throw Exception("Failed to load movies!");
  }
}
