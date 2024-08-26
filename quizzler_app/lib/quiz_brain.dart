import 'question.dart';
import 'package:flutter/material.dart';

class QuizBrain
{
  List<Question> _questions = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true)
  ];

  int _currentIndex=-1;

  String nextQuestion()
  {
    _currentIndex++;
    if (_currentIndex>(_questions.length-1))
      {
        return "";
      }
    return _questions[_currentIndex].questionText;
  }

  Icon checkAnswer(bool playerAnswer)
  {
    if (_questions[_currentIndex].questionAnswer == playerAnswer)
    {
      return Icon(Icons.check, color: Colors.green);
    }
    else
    {
      return Icon(Icons.close, color: Colors.red);
    }

  }

}