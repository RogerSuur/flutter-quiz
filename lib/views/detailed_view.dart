import 'package:flutter/material.dart';
import 'package:quiz_app/models/category.dart';
import 'package:quiz_app/models/question.dart';
import 'package:quiz_app/views/score_view.dart';

class DetailedView extends StatefulWidget {
  final Category category;

  const DetailedView({super.key, required this.category});

  @override
  State<DetailedView> createState() => _DetailedViewState();
}

class _DetailedViewState extends State<DetailedView> {
  int currentQuestionIndex = 0;
  int score = 0;

  bool? isAnswerCorrect;
  bool showAnswer = false;

  void _answerQuestion(bool userAnswer) {
    bool correctAnswer = widget.category.questions[currentQuestionIndex].answer;

    setState(() {
      isAnswerCorrect = userAnswer == correctAnswer;
      showAnswer = true;
    });

    if (isAnswerCorrect!) {
      score++;
    }
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        currentQuestionIndex++;
        showAnswer = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (currentQuestionIndex == widget.category.questions.length) {
      Future.delayed(Duration.zero, () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ScoreView(
              score: score,
              totalQuestions: widget.category.questions.length,
            ),
          ),
        );
      });
      return Container();
    }

    Question currentQuestion = widget.category.questions[currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(widget.category.imageUrl),
          Text(
            widget.category.questions[currentQuestionIndex].question,
            style: const TextStyle(fontSize: 24),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () => _answerQuestion(true),
                  child: const Text('True')),
              ElevatedButton(
                  onPressed: () => _answerQuestion(false),
                  child: const Text('False')),
            ],
          ),
          if (showAnswer)
            Text(
              isAnswerCorrect! ? 'Correct!' : 'Incorrect!',
              style: TextStyle(
                color: isAnswerCorrect! ? Colors.green : Colors.red,
                fontSize: 24,
              ),
            ),
          if (showAnswer)
            Text(
              currentQuestion.comment, // Displaying the comment
              style: const TextStyle(fontSize: 18),
            ),
        ],
      ),
    );
  }
}
