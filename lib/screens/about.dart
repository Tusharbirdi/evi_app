import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromRGBO(31, 31, 31, 50.0),
          centerTitle: true),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.lightBlueAccent,
              Colors.lightBlue,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
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
              SelectableText(
                "Imagination Behind\n        Technology",
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: headingHeight,
                ),
              ),
              SelectableText(str,
                  style: TextStyle(
                    fontSize: contentHeight - 1,
                  )),
              const SizedBox(
                height: 15,
              ),
              SelectableText(srt1,
                  style: TextStyle(
                      fontSize: contentHeight,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic)),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 4,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: Colors.blue),
              ),
              SizedBox(
                height: 15,
              ),
              SelectableText(
                'Our Mission',
                style: TextStyle(
                  fontSize: headingHeight,
                ),
              ),
              SelectableText(
                'To Tap and train best brainpower to give solutions for real challenges of the world',
                style: TextStyle(
                  fontSize: contentHeight,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 4,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: Colors.blue),
              ),
              SizedBox(
                height: 15,
              ),
              SelectableText('Contact Us',
                  style: TextStyle(
                    fontSize: headingHeight,
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone_rounded),
                  //Icon(Icons.email_rounded),
                  SizedBox(width: 5),
                  SelectableText(
                    '+91-77952-07065',
                    style: TextStyle(fontSize: contentHeight),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email_rounded),
                  //Icon(Icons.email_rounded),
                  SizedBox(width: 5),
                  SelectableText(
                    'hr@exposysdata.com',
                    style: TextStyle(fontSize: contentHeight),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                address,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
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

const String address =
    'Address :\nP.M R. Residency\nGround Floor, No-5/3 Sy. No.10/6-1\nOpp Nithyotsava Wedding Hall\nDoddaballapur Main Road\nSinganayakanahalli, Yelahanka\nBengaluru, Karnataka 560064';
