

import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  List Item = ["Item1","Item2","Item3","Item4"];
  TextEditingController titleText = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:  TextField(
          controller: titleText,

        ),
        actions: [
          ElevatedButton(onPressed: (){
            setState(() {
              Item.add(titleText.text);
            });
            titleText.clear();
          }, child: const Text("Add Item"))
        ],
      ),
      body: ListView.builder(

          itemCount: Item.length,
          itemBuilder:(context,index){
            return Container(
              margin: const EdgeInsets.only(bottom: 2.0),
              child: ListTile(
                title: Text(Item[index],style: TextStyle(color: Colors.white),),
                tileColor: Colors.grey,
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(onPressed: (){
                      setState(() {
                        Item.removeAt(index);
                      });
                    }, icon: Icon(Icons.delete)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.edit))
                  ],
                ),
              ),

            );
          }
      ),
    );


  }
}