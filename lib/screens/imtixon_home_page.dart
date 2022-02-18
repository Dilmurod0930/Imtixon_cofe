import 'dart:async';
import 'package:exam/screens/imtixon1_page.dart';
import 'package:flutter/material.dart';

class MyImtixonHom extends StatefulWidget {
  const MyImtixonHom({Key? key}) : super(key: key);

  @override
  _MyImtixonHomState createState() => _MyImtixonHomState();
}

class _MyImtixonHomState extends State<MyImtixonHom> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LogInPage()));
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(0),
          image: const DecorationImage(
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhX3ORsjxuLtjv40-D7Mn0HNdvaMSQ9xbQk1J__ylTds8RryxjoyufOEz-u3CFYGZuUZ0&usqp=CAU'),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 121,
            width: 132,
            child: Image.asset(
              'assets/imags/cofee.png',
              fit: BoxFit.cover,
            ),
          ),
          const Center(
            child: Text(
              "Ordinary Coffee House",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          ),
        ],
      ),
    ));
  }
}
