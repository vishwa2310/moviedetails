import 'package:flutter/material.dart';
import 'package:mymovies/model/movie.dart';

class MovieDetailsScreen extends StatelessWidget {
  static const routeName = '/MovieDetailsScreen';
  final Movie? movies;

  MovieDetailsScreen({this.movies});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text(movies!.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                elevation: 5,
                child: Hero(
                  tag: "id",

                  child: Container(
                    height: 400,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          'https://image.tmdb.org/t/p/w500/${movies!.imageUrl}',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(

                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.thumb_up,
                        size: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        movies!.vote.toString(),
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(

                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.calendar_today,
                        size: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        movies!.year,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(

                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.star_border,
                        size: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        movies!.rating,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),

                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              movies!.overview,
              style: TextStyle(
                fontSize: 16,

              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 20,
            ),


          ],
        ),
      ),

    );
  }
}