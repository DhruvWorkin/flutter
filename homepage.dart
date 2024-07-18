import 'package:flutter/material.dart';

class FirstHomePage extends StatelessWidget {
  const FirstHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text(
            'First page',
            style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text(
          'Body content here',
          style: TextStyle(fontSize: 35, color: Colors.blueAccent),
        ),

      ),
    );
  }
}
