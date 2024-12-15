import 'package:flutter/material.dart';
import 'package:my_flutter_app/Pages/RowContainerWidget.dart';
import 'package:my_flutter_app/Pages/ToDoApp.dart';

import 'Pages/ContainerWidget.dart';
import 'Pages/Counter.dart';
import 'Pages/ProfileView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  mySnackMessage(msg, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyApp"),
        backgroundColor: const Color.fromARGB(255, 4, 30, 80),
        foregroundColor: Colors.white,
        titleSpacing: 0,
        centerTitle: false,
        toolbarHeight: 60,
        toolbarOpacity: 1.0,
        elevation: 5,
        shadowColor: Colors.grey,
        automaticallyImplyLeading: true,
        actions: [
          IconButton(
              onPressed: () {
                mySnackMessage("I am Search", context);
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                mySnackMessage("I am Email", context);
              },
              icon: Icon(Icons.email)),
          IconButton(
              onPressed: () {
                mySnackMessage("I am Profile", context);
              },
              icon: Icon(Icons.person_pin)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 47, 85), // Dark blue background color
              ),
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero, // Removes default padding
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 47, 85), // Matches DrawerHeader background
                ),
                accountName: Text(
                  "Mohammad Nayan",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  "mdnayan@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                    "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-174669.jpg?t=st=1734031670~exp=1734035270~hmac=0d476fe61e5a1aaf9f47479b375dc4ea94d405451b3d54567a32b666b4ed6221&w=740",
                  ),
                ),
              ),
            ),

            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              subtitle: Text("subtitle"),
              autofocus: true,
              selected: true,
              onTap: (){},
            ),
            ListTile(
              title: Text("Products"),
              leading: Icon(Icons.apple),
              subtitle: Text("subtitle"),
              autofocus: true,
              selected: true,
              onTap: (){},
            ),
            ListTile(
              title: Text("Contact Us"),
              leading: Icon(Icons.call),
              subtitle: Text("subtitle"),
              autofocus: true,
              selected: true,
              onTap: (){},
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        onPressed: () {
          mySnackMessage("I am new", context);
        },
        backgroundColor: const Color.fromARGB(255, 4, 30, 80),
        focusColor: Colors.yellow,
        hoverColor: Colors.green,
        autofocus: true,
        mini: false,
        foregroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Wallet',
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 4, 30, 80),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        selectedFontSize: 16,
        unselectedFontSize: 14,
        iconSize: 28,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,

        ),
        currentIndex: 1,
        onTap: (index){
          if(index==0){
            mySnackMessage("I am Home", context);
          }
          if(index==1){
            mySnackMessage("I am Shopping Cart", context);
          }
          if(index==2){
            mySnackMessage("I am Wallet", context);
          }
        },

      ),
      // body:
      // ListView(
      //   children: [
      //     ProfileView(
      //       titleText: "Mohammad Nayan",
      //       subTitleText: "Hi",
      //     ),
      //
      //   ],
      // ),

      body: TodoApp()

    );
  }
}
