import 'package:flutter/material.dart';
import 'package:clima/screens/loading_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  runApp(MyApp());
  await dotenv.load(fileName: ".env");
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}

/*
! Geolocator Error on android 11


? Add one to manifest.
* Fine is more accurate
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />


? Exception
try{}catch(e){}

we can throw an exception
try{if () {throw 'bad input'}}
*/
