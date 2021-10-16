import 'package:flutter/material.dart';

import 'package:mymovies/model/movie.dart';
import 'package:mymovies/widget/movie_details_screen.dart';

class MovieCard extends StatelessWidget {

  final Movie movies;

   MovieCard({required this.movies});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(

        elevation: 5,
        child: InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MovieDetailsScreen(movies: movies,)));

          },
          child: Row(
            children: [
              SizedBox(
                height: 200,
                child: Image.network('https://image.tmdb.org/t/p/w500/${movies.imageUrl}'),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  padding:  EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  <Widget>[
                      Text(movies.title, // Edit this
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Expanded(child: Text(movies.overview, maxLines: 3, overflow: TextOverflow.ellipsis,)) // Edit this
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
