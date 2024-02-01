import '../models/category.dart';
import '../models/question.dart';

List<Category> categories = [
  Category('History', 'assets/history.jpg', [
    Question('History Question 1', true),
    Question('History Question 2', true),
    Question('History Question 3', true),
    Question('History Question 4', true),
    Question('History Question 5', true),
  ]),
  Category('Games', 'assets/games.jpg', [
    Question('Games Question 1', true),
    Question('Games Question 2', true),
    Question('Games Question 3', true),
    Question('Games Question 4', true),
    Question('Games Question 5', true),
  ]),
  Category('Math', 'assets/math.png', [
    Question('Math Question 1', true),
    Question('Math Question 2', true),
    Question('Math Question 3', true),
    Question('Math Question 4', true),
    Question('Math Question 5', true),
  ]),
  Category('Movies', 'assets/movies.jpeg', [
    Question('Movies Question 1', true),
    Question('Movies Question 2', true),
    Question('Movies Question 3', true),
    Question('Movies Question 4', true),
    Question('Movies Question 5', true),
  ]),
  Category('Music', 'assets/music.png', [
    Question('MUsic Question 1', true),
    Question('MUsic Question 2', true),
    Question('MUsic Question 3', true),
    Question('MUsic Question 4', true),
    Question('MUsic Question 5', true),
  ]),
];
