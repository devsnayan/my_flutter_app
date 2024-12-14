
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 250,
        height: 250,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        transform: Matrix4.rotationZ(0.2),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.yellow,
              offset: new Offset(6.0, 6.0),
            )
          ],
          border: Border.all(
            color: Colors.red,
            width: 2,

          )
        ),
        child: Text(" I am in the container widget", style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
