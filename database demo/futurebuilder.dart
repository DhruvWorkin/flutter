import 'package:flutter/material.dart';

class FuturebuilderDemo extends StatefulWidget {
  const FuturebuilderDemo({super.key});

  @override
  State<FuturebuilderDemo> createState() => _FuturebuilderDemoState();
}

class _FuturebuilderDemoState extends State<FuturebuilderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Form",style: TextStyle(color: Colors.greenAccent),),
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AddForm(),));
            }, icon: Icon(Icons.add),)
          ],),

        body: FutureBuilder(
        future: db.getUsersFormDB(),
    builder: (context,snapshot) {
    if(snapshot.data!=null){
    return ListView.builder(itemBuilder: (context, index){
    return Card(
    elevation: 8,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
    ),
    color: Colors.white,
    child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
    ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: Image,Image.network(),
    )
    ],
    ),
    ),
    );
    });
    }
    }
  },
  ),
  );
}
}
