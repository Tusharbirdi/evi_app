// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:evi_app/screens/webd.dart';
import 'constants.dart';

class buildCard extends StatefulWidget {
  final int index1;
  const buildCard({Key? key, required this.index1}) : super(key: key);
  @override
  State<buildCard> createState() => _buildCardState();
}

class _buildCardState extends State<buildCard> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: InkWell(
        onTap: () {
          setState(() {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Webd(index: widget.index1),
              ),
            );
          });
        },
        splashColor: Colors.teal[400],
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromRGBO(51, 122, 183, 1.0),
                Colors.lightBlue,
              ],
            ),
          ),
          height: 220,
          padding: const EdgeInsets.all(15),
          width: double.infinity,
          //olor: const Color.fromRGBO(51, 122, 183, 1.0),
          child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(myimages[widget.index1]),
                  foregroundImage: AssetImage(myimages[widget.index1]),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  mylist[widget.index1],
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
