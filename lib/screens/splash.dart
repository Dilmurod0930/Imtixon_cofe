import 'dart:async';
import 'package:exam/core/constants/colors_const.dart';
import 'package:flutter/material.dart';


class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 3), () {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            child: Image(
              image: NetworkImage(
                  'https://media.istockphoto.com/photos/one-like-social-media-notification-with-thumb-up-icon-picture-id1200899039?k=20&m=1200899039&s=612x612&w=0&h=RScG0RGONTAuYLeoREVl9c6xtTsOlJAbcUjZ9y2Z244='),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.35,
            child: Column(
              children: [
                Text(
                  "Find a Perfact",
                  style: TextStyle(
                      fontSize: FontsizeConst.ExtraLargeSize,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Job Match",
                  style: TextStyle(
                      fontSize: FontsizeConst.ExtraLargeSize,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text(
                      "Fingding your dream job is more easire",
                      style: TextStyle(
                          fontSize: FontsizeConst.MediumSize, color: Colors.grey),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 8, bottom: 25),
                    child: Text(
                      "and faster with JobHub",
                      style: TextStyle(
                          fontSize: FontsizeConst.MediumSize, color: Colors.grey),
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        fixedSize: const Size(250, 55),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)))),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/log_in');
                    },
                    child: Text(
                      "Let's Get Started >",
                      style: TextStyle(
                          fontSize: FontsizeConst.MediumSize, color: Colors.white),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}