import 'package:moor_flutter/moor_flutter.dart';

part 'moor_database.g.dart';

class MovieDetails extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text().withLength(min: 1, max: 400)();

  TextColumn get overview => text().withLength(min: 1, max: 1000)();

  TextColumn get rating => text().withLength(min: 1, max: 10)();

  TextColumn get count => text().withLength(min: 1, max: 10)();

  TextColumn get year => text().withLength(min: 1, max: 10)();

  TextColumn get imageUrl => text().withLength(min: 1, max: 500)();
}

@UseMoor(tables: [MovieDetails])
class AppDatabase extends _$AppDatabase {

  AppDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
      path: 'db.sqlite', logStatements: true));


  @override
  int get schemaVersion => 1;

  Future<List<MovieDetail>>? selectAllMovies() => select(movieDetails).get();

  Future<int> insertMovies(MovieDetail movies) => into(movieDetails).insert(movies);

   Future deleteEntry() {
    return delete(movieDetails).go();
  }
}
