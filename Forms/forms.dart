import 'package:flutter/material.dart';

class Forms extends StatefulWidget {
  const Forms({super.key});

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  TextEditingController txt = new TextEditingController();
  String str = '';
  TextEditingController txt1 = new TextEditingController();
  String str1 = '';
  TextEditingController txt2 = new TextEditingController();
  String str2 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registration Form ')),
      body: Column(
        children: [
          TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightGreenAccent, width: 5)),
              hintText: 'Enter E-mail',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightGreenAccent, width: 5))),
              controller: txt),
          TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlueAccent, width: 5)),
                  hintText: 'Enter password',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlueAccent, width: 5))),
              controller: txt1),
          TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.limeAccent, width: 5)),
                  hintText: 'Re-Enter Password',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.limeAccent, width: 5))),
              controller: txt2),

          ElevatedButton(
              onPressed: () {
                setState(() {
                  str = txt.text;
                  str1 = txt1.text;
                  str2 = txt2.text;
                });
              },
              child: Text('Submit')),
          Text("Email : "),Text(str),
          Text("Password : "),Text(str1),
          Text("Re-Confirm Password : "),Text(str2)
        ],
      ),
    );
  }
}
