import 'package:exam/core/constants/colors_const.dart';
import 'package:exam/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final MyRoute _myRoute = MyRoute();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:const ColorScheme.light(
          primary: ConsColors.Black,
        ),
      ),
      initialRoute: '/',
      onGenerateRoute: _myRoute.onGenerateRoute,
    );
  }
}
