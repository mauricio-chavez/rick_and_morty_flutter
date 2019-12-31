import 'package:flutter/material.dart';
import 'ui/screens/home.dart';

class RickAndMortyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: Home(),
    );
  }
}