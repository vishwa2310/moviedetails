import 'package:flutter/material.dart';
import 'package:mymovies/model/movie.dart';
import 'package:mymovies/model/movielistener.dart';
import 'package:mymovies/utils/constants.dart';

import 'list_item.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
    Future<List<Movie>>? populateAllMovies;

  @override
  void initState() {
    super.initState();
     _populateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(APPLICATION_NAME),
      ),
      body: FutureBuilder<List<Movie>>(
        future: populateAllMovies,
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData &&
              snapshot.connectionState == ConnectionState.done) {
            print(" has data ${snapshot.hasData}");
            List<Movie> item = snapshot.data!;
            return ListView.builder(
                shrinkWrap: true,
                itemCount: item.length,
                itemBuilder: (context, i) => MovieCard(movies: item[i]));
          } else if (snapshot.hasError) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Icon(Icons.sentiment_dissatisfied),
                  Text("$ERROR ${snapshot.error}"),
                  FlatButton(
                    child: const Text(RETRY),
                    onPressed: _populateData(),
                  )
                ],
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  CircularProgressIndicator(),
                  SizedBox(
                    height: 10,
                  ),
                  Text(WAITINGFORDATA)
                ],
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),


    );
  }

  _populateData()  {
    populateAllMovies = MovieListener().populateAllMovies();
      }
}
