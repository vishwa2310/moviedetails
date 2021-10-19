import 'package:mymovies/database/moor_database.dart';
import 'package:mymovies/network/newtworkcall.dart';
import 'package:mymovies/utils/constants.dart';

import 'movie.dart';

class MovieListener {
  final List<Movie> _movies = <Movie>[];

  var appdatabase = AppDatabase();

  Future<List<Movie>> populateAllMovies() async {
    var connStatus = await isInternet();
    if (connStatus) {
      final movies = await fetchAllMovies();
      await appdatabase.deleteEntry();
      for (var element in movies) {
        print(" insert ${element.title}");
        await appdatabase.insertMovies(MovieDetail(
            id: element.hashCode.toInt(),
            title: element.title,
            overview: element.overview,
            rating: element.rating,
            count: element.vote,
            year: element.year,
            imageUrl: element.imageUrl));
      }
      await appdatabase.selectAllMovies()!.then((value) {
        for (var element in value) {
          print(" get ${element.title}");
          _movies.add(Movie(
              title: element.title,
              overview: element.overview,
              imageUrl: element.imageUrl,
              year: element.year,
              vote: element.count,
              rating: element.rating));
        }
      });
    }
    return _movies;
  }
}
