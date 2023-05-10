import 'package:flutter/material.dart';
import 'dart:math';
import '../models/movie.dart';

final List<Movie> initialData = List.generate(
    50,
        (index) => Movie(
        title: "Moview $index",
        runtime: "${Random().nextInt(100) + 60} minutes"));

class MovieProvider with ChangeNotifier {
  final List<Movie> _movies = initialData;

  List<Movie> get movies => _movies;

  final List<Movie> _myList = [];

  List<Movie> get myList => _myList;

  void addToList(Movie movie) {
    // TODO ekleme kodunu yazınız.
  }

  void removeFromList(Movie movie) {
    // TODO çıkarma kodunu yazınız.
  }
}