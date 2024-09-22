import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wordle/app/app_colors.dart';

// Represents the status of a letter within the game
enum LetterStatus { initial, notInWord, inWord, correct }

class Letter extends Equatable {
  
  // Constructor to create a Letter instance with a given value and status
  // If no status is provided, it defaults to LetterStatus.initial
  const Letter({
    required this.val,  // The actual character in this letter (e.g., 'A')
    this.status = LetterStatus.initial,  // The status of the letter in the game
  });

  // Factory constructor to create an "empty" letter (with no value and initial status)
  // Useful for initializing the board at the start of the game
  factory Letter.empty() => const Letter(val: '');

  final String val;  // The value of the letter (a character)
  final LetterStatus status;  // The current status of the letter

  // Getter to determine the background color based on the letter's status
  // Each status corresponds to a different color
  Color get backgroundColor {
    switch(status){
      case LetterStatus.initial:
        return Colors.transparent;  // Default for initial letters
      case LetterStatus.notInWord:
        return notInWordColor;  
      case LetterStatus.inWord:
        return inWordColor; 
      case LetterStatus.correct:
        return correctColor;  
    }
  }

  // Getter to determine the border color based on the letter's status
  Color get borderColor { 
    switch(status) { 
      case LetterStatus.initial:
        return Colors.grey;  // Grey border for letters that haven't been checked yet
      default:
        return Colors.transparent;  // No border for other statuses
    }
  }

  // Method to create a new Letter instance with optional changes
  // This is used to modify the letter because Letter is immutable
  // The `val` and `status` are nullable and will only update if a value is provided
  Letter copyWith({
    String? val,  // Optional new letter value
    LetterStatus? status,  // Optional new status
  }) {
    return Letter(
      val: val ?? this.val,  // Use new value if provided, otherwise keep the current value
      status: status ?? this.status,  // Use new status if provided, otherwise keep the current status
    );
  }

  // Overriding equatable props
  // Two Letter objects are considered equal if both their `val` and `status` are the same
  @override
    List<Object?> get props => [val, status];
  
}
