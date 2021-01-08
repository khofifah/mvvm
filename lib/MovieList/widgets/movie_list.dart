import 'package:flutter/material.dart';
import 'package:learning_flutter/MovieList/view_models/movie_view_model.dart';
import 'package:learning_flutter/utils/app_sizes.dart';

class MovieList extends StatelessWidget {
  final List<MovieViewModel> movies;

  MovieList({this.movies});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.movies.length,
      itemBuilder: (context, index) {
        final movie = this.movies[index];

        return ListTile(
          contentPadding: EdgeInsets.all(5),
          title: Text(movie.title),
          leading: Container(
            child: Image.network(movie.poster),
            width: Sizes.s50,
            height: Sizes.s100,
          ),
        );
      },
    );
  }
}
