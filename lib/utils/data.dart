import '../models/category.dart';
import '../models/question.dart';

List<Category> categories = [
  Category('History', 'assets/history.jpg', [
    Question('The Great Wall of China is visible from the Moon.', false, ''),
    Question(
        'Cleopatra was Egyptian by birth', false, 'She was of Greek origin'),
    Question('The first human to journey into outer space was Yuri Gagarin.',
        true, ''),
    Question('The Titanic sank on its maiden voyage in 1930.', false,
        ' It was 1912.'),
    Question('Napoleon Bonaparte was born in France.', false,
        'He was born in Corsica'),
  ]),
  Category('Games', 'assets/games.jpg', [
    Question(
        'The best-selling video game of all time is "Minecraft."', true, ''),
    Question('"Pac-Man" was originally named "Puck-Man." ', true, ''),
    Question('The first home video game console is the PlayStation.', false,
        'It was the Magnavox Odyssey'),
    Question('"Super Mario Bros." was released for the first time in 1983. ',
        false, 'It was 1985'),
    Question('"World of Warcraft" is a real-time strategy game. ', false,
        'It\'s a Massively Multiplayer Online Role-Playing Game'),
  ]),
  Category('Math', 'assets/math.png', [
    Question('A right angle measures 90 degrees.', true, ''),
    Question('The sum of any two prime numbers is always even. ', false,
        'Consider 2 + 3 = 5'),
    Question('There are infinitely many prime numbers. ', true, ''),
    Question(
        'The number pi (π) can be exactly calculated and expressed as a rational number.',
        false,
        'Pi is an irrational number'),
    Question(
        'n a right triangle, the Pythagorean theorem states that the square of the hypotenuse is equal to the sum of the squares of the other two sides. ',
        true,
        ''),
  ]),
  Category('Movies', 'assets/movies.jpeg', [
    Question('"The Godfather" was released in 1974. ', false,
        'It was released in 1972'),
    Question(
        'The first feature-length animated movie ever released was Disney\'s "Snow White and the Seven Dwarfs."',
        true,
        ''),
    Question('Leonardo DiCaprio won his first Oscar for his role in "Titanic."',
        false, 'He won for "The Revenant"'),
    Question(
        '"Gone with the Wind" holds the record for the highest number of Oscars won by a single film.',
        false,
        'The record is held by "Ben-Hur," "Titanic," and "The Lord of the Rings: The Return of the King"'),
    Question(
        ' "Psycho" was the first American film to show a toilet being flushed on screen.',
        true,
        ''),
  ]),
  Category('Music', 'assets/music.png', [
    Question('The Beatles were originally formed in Manchester.', false,
        'They were formed in Liverpool'),
    Question('Mozart composed his first symphony when he was eight years old. ',
        true, ''),
    Question(' "Bohemian Rhapsody" by Queen was released in 1972.', false,
        'It was released in 1975'),
    Question(
        'Michael Jackson\'s "Thriller" is the best-selling album of all time. ',
        true,
        ''),
    Question('Beethoven was completely deaf for most of his life. ', false,
        'He began losing his hearing in his late 20s and was almost completely deaf by the end of his life'),
  ]),
];
