import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:evi_app/utils/containers.dart';

import 'webd.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leadingWidth: 40,
        elevation: 10,
        backgroundColor: const Color.fromRGBO(51, 51, 51, 60.0),
        centerTitle: true,
        title: Center(
          child: Row(
            children: const <Widget>[
              SizedBox(
                width: 8,
              ),
              CircleAvatar(
                maxRadius: 20,
                backgroundImage: AssetImage('images/expo.jpg'),
              ),
              SizedBox(
                width: 5,
              ),
              Text("Exposys Labs Virtual Intern",
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.lightBlueAccent, Colors.greenAccent])),
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(5, 8, 5, 8),
          child: Column(
            children: const [
              buildCard(index1: 0),
              SizedBox(
                height: 12,
              ),
              buildCard(index1: 1),
              SizedBox(
                height: 12,
              ),
              buildCard(index1: 2),
              SizedBox(
                height: 12,
              ),
              buildCard(index1: 3),
              SizedBox(
                height: 12,
              ),
              buildCard(index1: 4),
              SizedBox(
                height: 12,
              ),
              buildCard(index1: 5),
              SizedBox(
                height: 12,
              ),
              buildCard(index1: 6),
              SizedBox(
                height: 12,
              ),
              buildCard(index1: 7),
              SizedBox(
                height: 12,
              ),
              buildCard(index1: 8),
              SizedBox(
                height: 12,
              ),
              buildCard(index1: 9),
            ],
          ),
        ),
      ),
    );
  }
}
