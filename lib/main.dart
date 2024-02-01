import 'package:flutter/material.dart';
import 'package:quiz_app/views/home_page.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
