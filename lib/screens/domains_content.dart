// ignore_for_file: deprecated_member_use

import 'package:evi_app/utils/constants.dart';
import 'package:evi_app/utils/contents.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DomainContent extends StatefulWidget {
  final int index;
  const DomainContent({Key? key, required this.index}) : super(key: key);

  @override
  State<DomainContent> createState() => _DomainContentState();
}

class _DomainContentState extends State<DomainContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 60,
        title: Text(domainList[widget.index]),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.lightBlueAccent, Colors.greenAccent],
          ),
        ),
        child: Column(
          children: [
            const Text(
              'PROJECT DESCRIPTION',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              contents[widget.index.toString()].toString(),
              style: const TextStyle(fontSize: 15),
            ),
            (widget.index == 4)
                ? ElevatedButton(
                    onPressed: () async {
                      var url =
                          'https://drive.google.com/file/d/1Z7RKmScBO7n9vcDIG3Xeo853Ics4QFaF/view';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: const Text("Link To Drive"),
                  )
                : const Text("No link available"),
          ],
        ),
      ),
    );
  }
}
