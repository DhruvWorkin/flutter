import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  const FormDemo({super.key});

  @override
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if(value!.isEmpty){
                  return "Enter Value";
                }
              },
            ),

            ElevatedButton(onPressed: () {
              // if(_formKey.currentState!.validate()){
              //   print("Success");
              // }
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(),),);
            }, child: Text("Submit"),),
          ],
        ),
      ),
    );
  }
}
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Second PAeg"),
          ElevatedButton(onPressed: () {
            Navigator.pop(context);
          }, child: Text("VBack"))
        ],
      ),
    );
  }
}

