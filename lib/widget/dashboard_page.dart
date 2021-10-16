import 'package:flutter/material.dart';
import 'package:mymovies/model/movie.dart';
import 'package:mymovies/network/newtworkcall.dart';
import 'package:mymovies/utils/constants.dart';

import 'list_item.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
   List<Movie> _movies =  <Movie>[];

  @override
  void initState() {
    super.initState();
    _populateAllMovies();

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(APPLICATION_NAME),
      ),
      body: _movies.isNotEmpty?ListView.builder(
          itemCount: _movies.length, itemBuilder: (context, i) =>  MovieCard(movies:_movies[i])):const CircularProgressIndicator(),
    );
  }




void _populateAllMovies() async {
  final movies = await fetchAllMovies();

  setState(() {
    print('url call2');
    _movies = movies;
  });
}



}

