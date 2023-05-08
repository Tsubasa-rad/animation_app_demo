import 'package:animation_app_demo/screens/home/homebody.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("dd")),
      body: Column(
        children: [
          HomeBodyScreen(),
        ],
      )
      );
  }
}