import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCounter extends StatefulWidget {
  const CustomCounter({super.key});

  @override
  State<CustomCounter> createState() => _CustomCounterState();
}

class _CustomCounterState extends State<CustomCounter> {
  int countValue =0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("The Counter State is:${countValue}", style: TextStyle(fontSize:20,)),
          ElevatedButton(onPressed: (){
            setState(() {
              countValue++;
            });
            print(countValue);
          }, child: Text("Press Me..."))
        ],
      ),
    );
  }
}
