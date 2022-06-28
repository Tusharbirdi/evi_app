import 'package:evi_app/utils/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Webd extends StatefulWidget {
  final int index;
  Webd({Key? key, required this.index}) : super(key: key);

  @override
  State<Webd> createState() => _WebdState();
}

class _WebdState extends State<Webd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 60,
        title: Text(domainList[widget.index]),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.lightBlueAccent, Colors.greenAccent],
          ),
        ),
      ),
    );
  }
}
