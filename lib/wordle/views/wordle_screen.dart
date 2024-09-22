import 'package:flutter/material.dart';
import 'package:flutter_wordle/wordle/models/letter_model.dart';
import 'package:flutter_wordle/wordle/models/word_model.dart';

enum GameStatus { playing, submitting, lost, won }

class WordleScreen extends StatefulWidget {
  const WordleScreen({ Key? key }) : super(key: key);

  @override
  _WordleScreenState createState() => _WordleScreenState();

}

class _WordleScreenState extends State<WordleScreen>{
  GameStatus _gameStatus = GameStatus.playing;

  final List<Word> _board = List.generate(
    6,
    (_) => Word(letters: List.generate(5, (_) => Letter.empty())),
  );

  int _currentWordIndex = 0;

  Word? get _currentWord => 
    _currentWordIndex < _board.length ? _board[_currentWordIndex] : null;

  Word _solution = Word.fromString(
    fiveLetterWords[Random().nextInt(fiveLetterWords.length)].toUpperCase(),
  );

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
  
}