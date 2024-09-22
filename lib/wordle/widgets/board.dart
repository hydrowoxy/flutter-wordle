import 'package:flutter/material.dart';
import 'package:flutter_wordle/wordle/models/word_model.dart';

class Board extends StatelessWidget {
  const Board({ 
    Key? key,
    required this.board,
  }) : super(key: key);

  final List<Word> board;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: board
        .map (
          (word) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: word.letters
                .map((letter) => BoardTile(letter: letter))
                .toList(),
          ),
      )
      .toList(),
    );
  }
}