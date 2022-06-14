import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tic_tac/home_screen/home_screen.dart';
import 'package:tic_tac/profile_screen.dart';
import 'package:tic_tac/user_report.dart';
import 'package:tic_tac/worker_report.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xff112B3C),
      statusBarIconBrightness: Brightness.light,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),


      // theme: ThemeData(
      //   primarySwatch: Colors.indigo,
      //   primaryColor: Color(0xff112B3C),
      //   splashColor: Color(0xffF66B0E),
      //   shadowColor: Color(0xffEFEFEF),
      // ),
      home: UserReport()
    );
  }
}


