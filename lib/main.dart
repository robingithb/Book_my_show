import 'package:flutter/material.dart';
import 'package:socialmedia/screens/home.dart';
import 'package:socialmedia/screens/profile_screen.dart';
import 'package:socialmedia/screens/search_screen.dart';

void main() {
  runApp(bookshow());
}

class bookshow extends StatelessWidget {
  const bookshow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'here UI',
      initialRoute: '/',
      routes: {
        '/profile': (context) => const profilescreen(),
        '/search': (context) => const searchscreen(),
        '/home': (context) => Homescreen(),
      },
      home: Homescreen(),
    );
  }
}
