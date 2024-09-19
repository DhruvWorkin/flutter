import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CrudDemo extends StatefulWidget {
  const CrudDemo({super.key});

  @override
  State<CrudDemo> createState() => _CrudDemoState();
}

class _CrudDemoState extends State<CrudDemo> {
  List<Map<String,dynamic>> items = [
    {
      "Title":"item1",
      "data":"one"
    },
    {
      "Title":"item2",
      "data":"two"
    },
    {
      "Title":"item3",
      "data":"three"
    }
  ];
  TextEditingController t1 = new TextEditingController();
  TextEditingController t2 = new TextEditingController();
  int? temp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CRUD demo with Listview')),
      body: Column(
        children: [
          TextField(controller: t1),
          TextField(controller: t2),
          ElevatedButton(onPressed: () {
            if(temp==null){
              items.add(
                {
                  "Title":t1.text,
                  "data": t2.text
                },
              );
            }else{
              items[temp!]={
                "Title":t1.text,
                "data": t2.text
              };
              temp=null;
            }setState(() {

            });
          }, child: Text("Add/Update")),
          Expanded(
            child: ListView.builder(itemBuilder: (context,index){
              return Card(
                child: Column(
                  children: [
                    Text(items[index]['Title']),
                    Text(items[index]['data']),
                    IconButton(onPressed: () {
                      items.removeAt(index);
                      setState(() {

                      });
                    }, icon: Icon(Icons.delete_forever)),
                    IconButton(onPressed: () {
                      t1.text= items[index]["Title"];
                      t2.text= items[index]["data"];
                      temp=index;
                      setState(() {

                      });
                    }, icon: Icon(Icons.edit)),
                  ],
                ),
              );
            },itemCount: items.length,),
          )
        ],
      ),
    );
  }
}
