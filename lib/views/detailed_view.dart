// Shows the questions and options for a selected category.

// Display the category image and a question.
// True/False buttons for answering.
// Logic to check if the answer is correct and provide instant feedback (change color, display a message, etc.).
// Navigate to the next question or to ScoreView after the last question.

import 'package:flutter/material.dart';
import 'package:quiz_app/models/category.dart';

class DetailedView extends StatefulWidget {
  final Category category;

  const DetailedView({required this.category});

  @override
  State<DetailedView> createState() => _DetailedViewState();
}

class _DetailedViewState extends State<DetailedView> {
  int currentQuestionIndex = 0;
  int score = 0;

  void _answerQuestion(bool answer) {
    if (widget.category.questions[currentQuestionIndex].answer == answer) {
      score++;
    }
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (currentQuestionIndex >= widget.category.questions.length) {
      // Quiz completed, navigate to ScoreView
      // You can also pass the score to ScoreView
    }

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
            style: TextStyle(fontSize: 24),
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
          )
        ],
      ),
    );
  }
}
