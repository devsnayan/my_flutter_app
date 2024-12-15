import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {

  final titleText;
  final subTitleText;

  
  const ProfileView({super.key,
    required this.titleText,
    required this.subTitleText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.red,
          child: Text("PIC"),
        ),
        title: Text(titleText),
        subtitle: Text(subTitleText),
        tileColor: Colors.amber,
      ),
    );
  }
}
