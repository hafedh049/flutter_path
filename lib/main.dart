import 'package:flutter/material.dart';

import 'views/menu.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Menu(),
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}
