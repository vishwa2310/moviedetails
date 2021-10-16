// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class MovieData extends DataClass implements Insertable<MovieData> {

  final String title;
  final String overview;
  final String rating;
  final String count;
  final String imageUrl;
  final String year;
  MovieData(
      {
      required this.title,
      required this.overview,
      required this.rating,
      required this.count,
      required this.imageUrl,required this.year});
  factory MovieData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';

    final stringType = db.typeSystem.forDartType<String>();

    return MovieData(
      title: stringType.mapFromDatabaseResponse(data['${effectivePrefix}original_title']) as String ,
      overview:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}overview']) as String,
      rating: stringType.mapFromDatabaseResponse(data['${effectivePrefix}vote_average'])as String,
      count:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}vote_count'])as String,
      year:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}release_date'])as String,
      imageUrl:
      stringType.mapFromDatabaseResponse(data['${effectivePrefix}poster_path'])as String,

    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};

    if (!nullToAbsent || title != null) {
      map['original_title'] = Variable<String>(title);
    }
    if (!nullToAbsent || overview != null) {
      map['overview'] = Variable<String>(overview);
    }
    if (!nullToAbsent || rating != null) {
      map['vote_average'] = Variable<String>(rating);
    }
    if (!nullToAbsent || count != null) {
      map['vote_count'] = Variable<String>(count);
    }
    if (!nullToAbsent || year != null) {
      map['release_date'] = Variable<String>(year);
    }

    if (!nullToAbsent || imageUrl != null) {
      map['poster_path'] = Variable<String>(imageUrl);
    }

    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(

      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      overview: overview == null && nullToAbsent ? const Value.absent() : Value(overview),
      rating:
      rating == null && nullToAbsent ? const Value.absent() : Value(rating),
      count:
      count == null && nullToAbsent ? const Value.absent() : Value(count),
      year:
      year == null && nullToAbsent ? const Value.absent() : Value(year),
      imageUrl:
      imageUrl == null && nullToAbsent ? const Value.absent() : Value(imageUrl),
    );
  }

  factory MovieData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MovieData(

      title: serializer.fromJson<String>(json['original_title']),
      overview: serializer.fromJson<String>(json['overview']),
      rating: serializer.fromJson<String>(json['vote_average']),
      count: serializer.fromJson<String>(json['vote_count']),
      year: serializer.fromJson<String>(json['release_date']),
      imageUrl: serializer.fromJson<String>(json['poster_path']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'original_title': serializer.toJson<String>(title),
      'overview': serializer.toJson<String>(overview),
      'vote_average': serializer.toJson<String>(rating),
      'vote_count': serializer.toJson<String>(count),
      'release_date': serializer.toJson<String>(year),
      'poster_path': serializer.toJson<String>(imageUrl),
    };
  }

  MovieData copyWith(
          {required int id,
            required String title,
            required String name,
            required  String email,
            required String phone,
            required  bool status}) =>
      MovieData(
        title: title ?? this.title,
        overview: overview ?? this.overview,
        rating: rating ?? this.rating,
        count: count ?? this.count,
        year: year ?? this.year,
        imageUrl: imageUrl ?? this.imageUrl,
      );
  @override
  String toString() {
    return (StringBuffer('MovieData(')
          ..write('original_title: $title, ')
          ..write('overview: $overview, ')
          ..write('vote_average: $rating, ')
          ..write('vote_count: $count, ')
          ..write('release_date: $year, ')
          ..write('poster_path: $imageUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      title.hashCode,
      $mrjc(
          overview.hashCode,
          $mrjc(rating.hashCode,
              $mrjc(count.hashCode, $mrjc(year.hashCode, imageUrl.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MovieData &&
          other.title == this.title &&
          other.overview == this.overview &&
          other.rating == this.rating &&
          other.count == this.count &&
          other.year == this.year &&
          other.imageUrl == this.imageUrl);
}

class UsersCompanion extends UpdateCompanion<MovieData> {
  final Value<String> title;
  final Value<String> overview;
  final Value<String> rating;
  final Value<String> count;
  final Value<String> year;
  final Value<String> imageUrl;
  const UsersCompanion({
    this.title = const Value.absent(),
    this.overview = const Value.absent(),
    this.rating = const Value.absent(),
    this.count = const Value.absent(),
    this.year = const Value.absent(),
    this.imageUrl = const Value.absent(),
  });
  UsersCompanion.insert({
    required String title,
    required String overview,
    required String rating,
    required String count,
    required String year,
    required String imageUrl,
  })  : title = Value(title),
        overview = Value(overview),
        rating = Value(rating),
        count = Value(count),
        year = Value(year),
        imageUrl = Value(imageUrl);
  static Insertable<MovieData> custom({
    Expression<String>? title,
    Expression<String>? overview,
    Expression<String>? rating,
    Expression<String>? count,
    Expression<String>? year,
    Expression<String>? imageUrl,
  }) {
    return RawValuesInsertable({
      if (title != null) 'original_title': title,
      if (overview != null) 'overview': overview,
      if (rating != null) 'vote_average': rating,
      if (count != null) 'vote_count': count,
      if (year != null) 'release_date': year,
      if (imageUrl != null) 'poster_path': imageUrl,
    });
  }

  UsersCompanion copyWith(
      {Value<String>? title,
      Value<String>? overview,
      Value<String>? rating,
      Value<String>? count,
      Value<String>? year,
      Value<String>? imageUrl}) {
    return UsersCompanion(
      title: title ?? this.title,
      overview: overview ?? this.overview,
      rating: rating ?? this.rating,
      count: count ?? this.count,
      year: year ?? this.year,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (title.present) {
      map['original_title'] = Variable<String>(title.value);
    }
    if (overview.present) {
      map['overview'] = Variable<String>(overview.value);
    }
    if (rating.present) {
      map['vote_average'] = Variable<String>(rating.value);
    }
    if (count.present) {
      map['vote_count'] = Variable<String>(count.value);
    }
    if (year.present) {
      map['release_date'] = Variable<String>(year.value);
    }
    if (imageUrl.present) {
      map['poster_path'] = Variable<String>(imageUrl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('original_title: $title, ')
          ..write('overview: $overview, ')
          ..write('vote_average: $rating, ')
          ..write('vote_count: $count, ')
          ..write('release_date: $year, ')
          ..write('poster_path: $imageUrl')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, MovieData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $UsersTable(this._db, this._alias);
  final VerificationMeta _titleMeta = const VerificationMeta('original_title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn('original_title', $tableName, false,
        minTextLength: 1, maxTextLength: 1000);
  }

  final VerificationMeta _overviewMeta = const VerificationMeta('overview');
  GeneratedTextColumn _overview;
  @override
  GeneratedTextColumn get overview => _overview ??= _constructTitle();
  GeneratedTextColumn _constructOverview() {
    return GeneratedTextColumn('overview', $tableName, false,
        minTextLength: 1, maxTextLength: 1000);
  }

  final VerificationMeta _voteMeta = const VerificationMeta('vote_average');
  GeneratedTextColumn _rate;
  @override
  GeneratedTextColumn get rate => _rate??= _constructRate();
  GeneratedTextColumn _constructRate() {
    return GeneratedTextColumn('vote_average', $tableName, false,
        minTextLength: 1, maxTextLength: 30);
  }

  final VerificationMeta _countMeta = const VerificationMeta('vote_count');
  GeneratedTextColumn _count;
  @override
  GeneratedTextColumn get count => _count ??= _constructCount();
  GeneratedTextColumn _constructCount() {
    return GeneratedTextColumn('vote_count', $tableName, false,
        minTextLength: 5, maxTextLength: 30);
  }

  final VerificationMeta _releaseMeta = const VerificationMeta('release_date');
  GeneratedTextColumn _release;
  @override
  GeneratedTextColumn get release => _release ??= _constructRelease();
  GeneratedTextColumn _constructRelease() {
    return GeneratedTextColumn('release_date', $tableName, false,
        minTextLength: 1, maxTextLength: 30);
  }

  final VerificationMeta _posterMeta = const VerificationMeta('poster_path');
  GeneratedTextColumn _poster;
  @override
  GeneratedTextColumn get poster => _poster ??= _constructPoster();
  GeneratedTextColumn _constructPoster() {
    return GeneratedTextColumn('poster_path', $tableName, false,
        minTextLength: 1, maxTextLength: 500);
  }

  @override
  List<GeneratedColumn> get $columns => [title, overview, rate, count, release, poster];
  @override
  $UsersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'users';
  @override
  final String actualTableName = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<MovieData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);

    if (data.containsKey('original_title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['original_title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('overview')) {
      context.handle(
          _overviewMeta, overview.isAcceptableOrUnknown(data['overview']!, _overviewMeta));
    } else if (isInserting) {
      context.missing(_overviewMeta);
    }
    if (data.containsKey('vote_average')) {
      context.handle(
          _voteMeta, rate.isAcceptableOrUnknown(data['vote_average']!, _voteMeta));
    } else if (isInserting) {
      context.missing(_voteMeta);
    }
    if (data.containsKey('vote_count')) {
      context.handle(
          _countMeta, count.isAcceptableOrUnknown(data['vote_count']!, _countMeta));
    } else if (isInserting) {
      context.missing(_countMeta);
    }

    if (data.containsKey('release_date')) {
      context.handle(
          _releaseMeta, release.isAcceptableOrUnknown(data['release_date']!, _releaseMeta));
    } else if (isInserting) {
      context.missing(_releaseMeta);
    }

    if (data.containsKey('poster_path')) {
      context.handle(
          _posterMeta, poster.isAcceptableOrUnknown(data['poster_path']!, _posterMeta));
    } else if (isInserting) {
      context.missing(_posterMeta);
    }





    return context;
  }



  @override
  MovieData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MovieData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(_db, alias);
  }
}

abstract class _$UserDB extends GeneratedDatabase {

  _$UserDB(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);

  $UsersTable _users;
  $UsersTable get users => _users ??= $UsersTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [users];

}
