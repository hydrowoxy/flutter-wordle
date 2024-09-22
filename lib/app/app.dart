import 'package:flutter/material.dart'; // material.dart pkg for UI elements

class App extends StatelessWidget {  // StatelessWidget has immutable state
  const App({Key? key}) : super(key: key); // Immutable instance of App class

  @override
  Widget build(BuildContext context){ // Returns widget that describes part of the UI; 
                                      // BuildContext provides info about the location of the widget in the widget tree/UI structure

    return MaterialApp( // Root widget of the app which this build method returns
      title: 'Flutter Wordle App', // App title
      debugShowCheckedModeBanner: false, // Removes debug banner when app is running in debug mode
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black), // Dark theme app; base layout widgets are all black
      home: const WordleScreen(), // Main/Home screen of app
    );

  }
}
