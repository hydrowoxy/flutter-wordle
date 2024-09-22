import 'package:flutter/material.dart'; // For pre-built UI components
import 'package:flutter_wordle/wordle/views/wordle_screen.dart';

class App extends StatelessWidget {  // App class extends StatelessWidget, meaning it has no mutable state
  const App({Key? key}) : super(key: key); // Constructor for the App class; creates an immutable instance

  @override
  Widget build(BuildContext context){ // build method constructs the widget tree for this widget
                                      // BuildContext provides details about the widget's location in the UI hierarchy
    return MaterialApp( // The root widget of the application, which wraps other widgets and configures app-wide settings
      title: 'Flutter Wordle App', // Title
      debugShowCheckedModeBanner: false, // No debug banner in debug mode
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black), // Sets a dark theme for the app and customizes the scaffold background color to black
      home: const WordleScreen(), // The starting/home screen of the app, a constant widget representing the main UI
    );
  }
}
