import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evi_app/model/user%20model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:evi_app/utils/containers.dart';

import 'loginscreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

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
            DrawerHeader(
              margin: const EdgeInsets.fromLTRB(35, 35, 35, 35),
              //padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Column(
                children: [
                  const CircleAvatar(
                    foregroundImage: AssetImage('images/expo.jpg'),
                    radius: 30,
                  ),
                  Text(loggedInUser.firstName.toString() +
                      loggedInUser.secondName.toString()),
                  Text(loggedInUser.email.toString()),
                ],
              ),
            ),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                logout(context);
              },
              leading: const Icon(Icons.login_rounded),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leadingWidth: 40,
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
              SizedBox(width: 5),
              Text("Exposys Data Labs",
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
        //   child: SingleChildScrollView(
        //     padding: const EdgeInsets.fromLTRB(5, 8, 5, 8),
        //     child: Column(
        //       children: const [
        //         buildCard(index1: 0),
        //         SizedBox(
        //           height: 12,
        //         ),
        //         buildCard(index1: 1),
        //         SizedBox(
        //           height: 12,
        //         ),
        //         buildCard(index1: 2),
        //         SizedBox(
        //           height: 12,
        //         ),
        //         buildCard(index1: 3),
        //         SizedBox(
        //           height: 12,
        //         ),
        //         buildCard(index1: 4),
        //         SizedBox(
        //           height: 12,
        //         ),
        //         buildCard(index1: 5),
        //         SizedBox(
        //           height: 12,
        //         ),
        //         buildCard(index1: 6),
        //         SizedBox(
        //           height: 12,
        //         ),
        //         buildCard(index1: 7),
        //         SizedBox(
        //           height: 12,
        //         ),
        //         buildCard(index1: 8),
        //         SizedBox(
        //           height: 12,
        //         ),
        //         buildCard(index1: 9),
        //         SizedBox(
        //           height: 12,
        //         ),
        //         buildCard(index1: 10),
        //       ],
        //     ),
        //   ),
        // ),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              color: const Color.fromRGBO(51, 51, 51, 60.0),
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Click on the particular domain tab to explore more about the Internship',
                  style: TextStyle(fontSize: 18, color: CupertinoColors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const buildCard(index1: 0),
            const SizedBox(
              height: 12,
            ),
            const buildCard(index1: 1),
            const SizedBox(
              height: 12,
            ),
            const buildCard(index1: 2),
            const SizedBox(
              height: 12,
            ),
            const buildCard(index1: 3),
            const SizedBox(
              height: 12,
            ),
            const buildCard(index1: 4),
            const SizedBox(
              height: 12,
            ),
            const buildCard(index1: 5),
            const SizedBox(
              height: 12,
            ),
            const buildCard(index1: 6),
            const SizedBox(
              height: 12,
            ),
            const buildCard(index1: 7),
            const SizedBox(
              height: 12,
            ),
            const SizedBox(
              height: 12,
            ),
            const buildCard(index1: 8),
            const SizedBox(
              height: 12,
            ),
            const buildCard(index1: 9),
            const SizedBox(
              height: 12,
            ),
            const buildCard(index1: 10),
            const SizedBox(
              height: 12,
            ),
            const buildCard(index1: 11),
            const SizedBox(
              height: 12,
            ),
            const buildCard(index1: 12),
            const SizedBox(
              height: 12,
            ),
            const buildCard(index1: 13),
          ],
        ),
      ),
    );
  }
}

Future<void> logout(BuildContext context) async {
  await FirebaseAuth.instance.signOut();
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));
}
