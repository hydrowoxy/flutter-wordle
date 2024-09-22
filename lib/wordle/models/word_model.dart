import 'package:equatable/equatable.dart'; 
import 'package:flutter_wordle/wordle/wordle.dart'; 

class Word extends Equatable { 
  // A list of Letter objects forms a Word

  const Word({ required this.letters }); // Constructor to create a Word with a list of Letter objects

  // Factory constructor to create a Word from a string
  // The string is split into characters and each character is converted into a Letter
  factory Word.fromString(String word) => 
    Word(letters: word.split('').map((e) => Letter(val: e)).toList());

  final List<Letter> letters; // A list of Letter objects representing the characters in the word

  // Getter that converts the List<Letter> back into a String representation of the word
  String get wordString => letters.map((e) => e.val).join();

  // Method to add a letter to the Word
  // Finds the first empty spot in the list (represented by a Letter with an empty value) and adds the new letter
  void addLetter(String val) {
    final currentIndex = letters.indexWhere((e) => e.val.isEmpty); // Find the first empty letter
    if (currentIndex != -1) {
      letters[currentIndex] = Letter(val: val); // Replace the empty letter with the new one
    }
  }

  // Method to remove the most recently added letter from the Word
  // Finds the last non-empty Letter and sets it back to an empty Letter
  void removeLetter() {
    final recentLetterIndex = letters.lastIndexWhere((e) => e.val.isNotEmpty); // Find the most recent non-empty letter
    if (recentLetterIndex != -1) {
      letters[recentLetterIndex] = Letter.empty(); // Reset the letter to be empty
    }
  }

  // Overriding equatable props
  // Two Words are considered equal if their letters list is the same
  @override
    List<Object?> get props => [letters];
}
