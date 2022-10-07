import 'dart:html';

import 'package:flutter/material.dart';

class Log1 extends StatefulWidget {
  const Log1({super.key});
  @override
  State<Log1> createState() => _Log1State();
}

class _Log1State extends State<Log1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5FA),
      body: SafeArea(
        child: Column(
          children: const [
            Text(
              'You have pushed the button this many times:',
            ),
            FloatingActionButton(
              onPressed: null,
              backgroundColor: Colors.yellowAccent,
            )
          ],
        ),
      ),
    );
  }
}
