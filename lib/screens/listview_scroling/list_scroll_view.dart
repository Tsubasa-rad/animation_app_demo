import 'package:flutter/material.dart';

class ListScrollView extends StatefulWidget {
  const ListScrollView({super.key});

  @override
  State<ListScrollView> createState() => _ListScrollViewState();
}

class _ListScrollViewState extends State<ListScrollView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("list wheel Scroll View"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        itemExtent: 250,
        children: [
          Card(
            child: Center(
              child: Text("1"),
            ),
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
