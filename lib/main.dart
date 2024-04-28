import 'package:flutter/material.dart';
import 'package:responsiveapp/ui/digitalcard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital Card',
      debugShowCheckedModeBanner: false,
      home: DigitalCard(),
    );
  }
}
