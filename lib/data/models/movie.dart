class Movie {
  Movie({
    required this.id,
    required this.title,
    required this.releaseDate,
    required this.overview,
    required this.genreIds,
    required this.posterPath,
  });

  final int id;
  final String title;
  final String releaseDate;
  final String overview;
  final List<int> genreIds;
  final String posterPath;

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
    id: json['id'],
    title: json['title'],
    releaseDate: json['release_date'],
    overview: json['overview'],
    genreIds: List<int>.from(json['genre_ids']),
    posterPath: json['poster_path'],
  );
}