import 'package:flutter/material.dart';

class FormValidation extends StatefulWidget {
  const FormValidation({super.key});

  @override
  State<FormValidation> createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  final _formkey = GlobalKey<FormState>();
  final RegExp email = RegExp(r"@gmail.com$");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registration Form"),),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: "Enter Email ID") ,
              validator: (value) {
                if(value!.isEmpty){
                  return "Email field can't be Empty";
                }else if(!email.hasMatch(value)){
                  return "Invalid format";
                }
              },
            ),
           ElevatedButton(onPressed: () {
             if(_formkey.currentState!.validate()){
               print("Success");
               Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
             }
           }, child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Homepage"),),
      body: Column(
        children: [
          Center(child: Text("Welcome")),

        ],
      ),
    );
  }
}

