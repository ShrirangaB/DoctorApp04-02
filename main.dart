import 'package:ProviderFeb06/loginscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 7),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => LoginPlease(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Image.network(
              "https://cdn.dribbble.com/users/2077073/screenshots/6005120/loadin_gif.gif")),
    );
  }
}
