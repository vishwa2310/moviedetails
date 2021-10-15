import 'package:moor_flutter/moor_flutter.dart';
import 'package:mymovies/model/movie.dart';

part 'moor_database.g.dart';

class Users extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 1, max: 500)();
  TextColumn get overview => text().withLength(min: 1, max: 1000)();
  TextColumn get rating => text().withLength(min: 5, max: 30)();
  TextColumn get count => text().withLength(min: 1, max: 11)();
  TextColumn get year => text().withLength(min: 5, max: 30)();
  TextColumn get imageUrl => text().withLength(min: 1, max: 500)();

}

@UseMoor(tables: [Users])
class UserDB extends _$UserDB {
  UserDB() : super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite', logStatements: true));

  int get schemaVersion => 1;

  Future<List<MovieData>> getMovies() => select(users).get();
  Future insertMovies(MovieData movie) => into(users).insert(movie);

}
