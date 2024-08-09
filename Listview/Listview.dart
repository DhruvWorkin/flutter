import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListviewDemo extends StatelessWidget {
  const ListviewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> fruits=[
      "Apple",
      "Banana",
      "Orange",
      "Mango",
      "Pineapple",
      "Guava",
      "Kiwi",
      "Strawberry",
      "Papaya",
      "Watermelon",
      "Peach",
      "Cherry",
      "Pomegranate",
      "Avocado",
      "Grapes"
    ];
    return Scaffold(
      appBar: AppBar(title: Text("Fruits List",style: TextStyle(fontSize: 24,color: Colors.lightGreen)),backgroundColor: Colors.black87,),
      body: ListView.builder(
        // scrollDirection: Axis.horizontal,
        itemCount: fruits.length,
        itemBuilder: (context, index){
        return Container(
            height: 120,
            width: 150,
            color: Colors.greenAccent,
            child: Card(
              color: Colors.black54,
                child: Center(
                    child: Text(fruits[index],style: TextStyle(fontSize: 25,color: Colors.green),))
            )
        );
      },
      ),
    );
  }
}
