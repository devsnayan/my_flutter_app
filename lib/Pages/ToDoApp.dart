import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  List<String> items = ["Item1", "Item2", "Item3", "Item4"];
  TextEditingController titleText = TextEditingController();
  TextEditingController editTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: TextField(
          controller: titleText,
          decoration: const InputDecoration(
            hintText: "Enter a new item",
            border: InputBorder.none,
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (titleText.text.isNotEmpty) {
                  items.add(titleText.text);
                  titleText.clear();
                }
              });
            },
            child: const Text("Add Item"),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 2.0),
            child: ListTile(
              title: Text(
                items[index],
                style: const TextStyle(color: Colors.white),
              ),
              tileColor: Colors.grey,
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Delete Button
                  IconButton(
                    onPressed: () {
                      setState(() {
                        items.removeAt(index);
                      });
                    },
                    icon: const Icon(Icons.delete),
                  ),

                  // Edit Button
                  IconButton(
                    onPressed: () {
                      editTextController.text = items[index];
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("Edit Item"),
                            content: TextField(
                              controller: editTextController,
                              decoration: const InputDecoration(
                                hintText: "Edit the item",
                              ),
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if (editTextController.text.isNotEmpty) {
                                      items[index] = editTextController.text;
                                    }
                                  });
                                  Navigator.of(context).pop();
                                },
                                child: const Text("Save"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text("Cancel"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    icon: const Icon(Icons.edit),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
