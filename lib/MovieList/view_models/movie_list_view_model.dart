import 'package:flutter/material.dart';
import 'package:learning_flutter/MovieList/view_models/movie_view_model.dart';
import 'package:learning_flutter/services/webservice.dart';

class MovieListViewModel extends ChangeNotifier {
  List<MovieViewModel> movies = List<MovieViewModel>();

  Future<void> fetchMovies(String keyword) async {
    final results = await WebService().fetchMovies(keyword);
    this.movies = results.map((e) => MovieViewModel(movie: e)).toList();
    notifyListeners();
  }
}
