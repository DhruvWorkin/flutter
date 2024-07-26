import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    String val1= '';
    String val2= '';
    String val3= '';

    return SafeArea(
      child: Scaffold(
        appBar: AppBar (
          title: Text('My homepage'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5)
                    ),
                    hintText: 'Email'),
                onChanged: (value) => val1=value,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 5)
                    ),
                    hintText: 'password'),
                onChanged: (value) => val2=value,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 5)
                    ),
                    hintText: 're enter password'),
                onChanged: (value) => val3=value,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow, width: 5)
                    ),
                    hintText: 'to print'),
                onTap: () => print(val1);
                print(val2);
                print(val3);
              ),
            ),

          ],
        ),
      ),
    );
  }
}
