import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  double headingHeight = 25.0;
  double contentHeight = 18.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 5,
          title: const Text(
            'About us',
            style: TextStyle(color: Colors.white, fontFamily: 'Ubuntu'),
          ),
          backgroundColor: const Color.fromRGBO(31, 31, 31, 50.0),
          centerTitle: true),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.lightBlueAccent, Colors.greenAccent],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft),
        ),
        padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              const CircleAvatar(
                backgroundImage: AssetImage('images/expo.jpg'),
                radius: 60,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Imagination Behind\n        Technology",
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: headingHeight,
                ),
              ),
              Text(str,
                  style: TextStyle(
                    fontSize: contentHeight,
                  )),
              const SizedBox(
                height: 15,
              ),
              Text(srt1,
                  style: TextStyle(
                      fontSize: contentHeight,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic)),
              const SizedBox(
                height: 15,
              ),
              Text('Our Mission',
                  style:
                      TextStyle(fontSize: headingHeight, fontFamily: 'Ubuntu')),
              const SizedBox(
                height: 7,
              ),
              Text(
                'To Tap and train best brainpower to give solutions for real challenges of the world',
                style: TextStyle(
                  fontSize: contentHeight,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const String str =
    'Based in Bangalore, Exposys Data Labs aims to Solve real world business problems like Automation, Big Data and data Science. Our core team of experts in various technologies help businesses to identify issues ,opportunities and prototype solutions using trending technologies like AI, ML, Deep Learning and Data Science. We follow a human-focussed and not technology driven approach to achieve success in our clients endeavours. ';

const String srt1 =
    '“Our discoveries are beyond belief and if you’re with us, you’ll discover a newer way to think!"';
