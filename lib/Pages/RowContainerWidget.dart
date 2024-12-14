import 'package:flutter/material.dart';

class Rowcontainerwidget extends StatelessWidget {
  const Rowcontainerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Container(
              width:150, 
              height: 200,
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text("Container One."),
          ),

          Container(
            width:150,
            height: 200,
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Text("Container One."),
          ),

          Container(
            width:150,
            height: 200,
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Text("Container One."),
          ),


        ],
      ),
    );
  }
}
