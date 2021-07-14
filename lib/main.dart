import 'package:flutter/material.dart';
import 'package:flutter_adaptive_navigation/adpative/adpative_nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: AdaptiveNavigation());
  }
}
