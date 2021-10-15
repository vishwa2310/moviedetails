
class Movie {
  final String title;
  final String imageUrl;
  final String overview;
  final String year;
  final String vote;
  final String rating;

  Movie({required this.title, required this.overview, required this.imageUrl, required this.year,required this.vote,required this.rating});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json["original_title"],
      imageUrl: json["poster_path"],
      overview: json["overview"],
      year: json["release_date"],
        vote: json["vote_count"] .toString(),
        rating: json["vote_average"] .toString()
    );
  }






}