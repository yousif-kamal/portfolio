import 'package:flutter/material.dart';
import 'package:myprofile/src/screen/myprofile.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyProfile(),
    );
  }
}
