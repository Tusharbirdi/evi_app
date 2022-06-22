import 'package:evi_app/utils/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Webd extends StatelessWidget {
  const Webd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mylist[0]),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.lightBlueAccent, Colors.greenAccent])),
      ),
    );
  }
}
