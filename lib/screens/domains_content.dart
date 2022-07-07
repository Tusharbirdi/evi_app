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
  var url =
      'https://drive.google.com/file/d/1Z7RKmScBO7n9vcDIG3Xeo853Ics4QFaF/view';
  var url2 =
      'https://drive.google.com/file/d/1kbu3Fu0LQzkM3CQLWXyRoB5Suguq8wqq/view';
  var url3 = 'http://www.exposysdata.com/registration.php';
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
            if (widget.index == 4)
              ElevatedButton(
                onPressed: () async {
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: const Text("Link To Drive"),
              ),
            if (widget.index == 0)
              ElevatedButton(
                onPressed: () async {
                  if (await canLaunch(url2)) {
                    await launch(url2);
                  } else {
                    throw 'Could not launch $url2';
                  }
                },
                child: const Text("Link To Drive"),
              ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                if (await canLaunch(url3)) {
                  await launch(url3);
                } else {
                  throw 'Could not launch $url3';
                }
              },
              child: const Text('Apply'),
            ),
          ],
        ),
      ),
    );
  }
}
