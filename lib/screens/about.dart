// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  double headingHeight = 25.0;
  double contentHeight = 18.0;
  double circleAvatarSize = 30;
  double sizeBoxWidth = 10;
  double sizeIcon = 40;

  String fburl = 'https://www.facebook.com/Exposysdatalabs/';
  String instaurl = 'https://www.instagram.com/exposysdatalabs/';
  String yturl = 'https://www.youtube.com/channel/UCCdSuhhzWqmj9h9uyEl-JSA';
  String linurl = 'https://www.linkedin.com/company/upchat-technologies/';
  String weburl = 'http://www.exposysdata.com/';
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
              Colors.greenAccent,
              Colors.blue,
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
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 1.6,
                width: 270,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: Colors.blue),
              ),
              const SizedBox(
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
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 1.6,
                width: 270,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: Colors.blue),
              ),
              const SizedBox(
                height: 15,
              ),
              SelectableText('Contact Us',
                  style: TextStyle(
                    fontSize: headingHeight,
                  )),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.phone_rounded),
                  //Icon(Icons.email_rounded),
                  const SizedBox(width: 5),
                  SelectableText(
                    '+91-77952-07065',
                    style: TextStyle(fontSize: contentHeight),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.email_rounded),
                  //Icon(Icons.email_rounded),
                  const SizedBox(width: 5),
                  SelectableText(
                    'hr@exposysdata.com',
                    style: TextStyle(fontSize: contentHeight),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () async {
                      if (await canLaunch(linurl)) {
                        await launch(linurl);
                      } else {
                        throw 'Could not launch $linurl';
                      }
                    },
                    icon: Icon(
                      FontAwesomeIcons.linkedin,
                      color: const Color.fromRGBO(10, 102, 194, 1.0),
                      size: sizeIcon,
                    ),
                  ),
                  SizedBox(
                    width: sizeBoxWidth,
                  ),
                  IconButton(
                    onPressed: () async {
                      if (await canLaunch(instaurl)) {
                        await launch(instaurl);
                      } else {
                        throw 'Could not launch $instaurl';
                      }
                    },
                    icon: const Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.black,
                    ),
                    iconSize: sizeIcon,
                  ),
                  SizedBox(
                    width: sizeBoxWidth,
                  ),
                  IconButton(
                    onPressed: () async {
                      if (await canLaunch(yturl)) {
                        await launch(yturl);
                      } else {
                        throw 'Could not launch $yturl';
                      }
                    },
                    icon: const Icon(
                      FontAwesomeIcons.youtube,
                      color: Color.fromRGBO(255, 0, 0, 1.0),
                    ),
                    iconSize: sizeIcon,
                  ),
                  SizedBox(
                    width: sizeBoxWidth,
                  ),
                  IconButton(
                    onPressed: () async {
                      if (await canLaunch(fburl)) {
                        await launch(fburl);
                      } else {
                        throw 'Could not launch $fburl';
                      }
                    },
                    icon: const Icon(
                      FontAwesomeIcons.facebookSquare,
                      color: Color.fromRGBO(66, 103, 178, 1.0),
                    ),
                    iconSize: sizeIcon,
                  ),
                  SizedBox(
                    width: sizeBoxWidth,
                  ),
                  IconButton(
                    onPressed: () async {
                      if (await canLaunch(weburl)) {
                        await launch(weburl);
                      } else {
                        throw 'Could not launch $weburl';
                      }
                    },
                    icon: const Icon(
                      FontAwesomeIcons.globe,
                      color: Colors.black,
                    ),
                    iconSize: sizeIcon,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                address,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
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

const String address =
    'P.M R. Residency\nGround Floor, No-5/3 Sy. No.10/6-1\nOpp Nithyotsava Wedding Hall\nDoddaballapur Main Road\nSinganayakanahalli, Yelahanka\nBengaluru, Karnataka 560064';
