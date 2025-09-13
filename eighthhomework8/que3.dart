/*Q3 Create a class Movie with attributes title and rating. In main(),
 create a list of 4 movies. Print only the movies with a rating above 7.  */
void main() {
  List<Movie> movies = [
    Movie(title: 'hello friend', rating: 8.4),
    Movie(title: 'hi', rating: 6.7),
    Movie(title: ' friends', rating: 4.2),
    Movie(title: 'sea&sun', rating: 9),
  ];
  for (var movie in movies) {
    if (movie.rating! > 7) {
      print('${movie.title}');
    }
  }
}

class Movie {
  String? title;
  double? rating;
  Movie({required String title, required double rating}) {
    this.rating = rating;
    this.title = title;
  }
}
