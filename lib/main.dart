import 'package:astro_tak/screens/HomePage.dart';
import 'package:flutter/material.dart';

import 'screens/ProfilePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '1',
      routes: {
        '1':(context) => const HomePage(),
        '2':(context) => const ProfilePage(),
      },
      home: HomePage(),
    );
  }
}

