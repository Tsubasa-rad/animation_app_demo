import 'package:flutter/material.dart';

class ListScrollView extends StatefulWidget {
  const ListScrollView({super.key});

  @override
  State<ListScrollView> createState() => _ListScrollViewState();
}

class _ListScrollViewState extends State<ListScrollView> {
  late FixedExtentScrollController controller;

  @override
  void initState() {
    super.initState();
    controller = FixedExtentScrollController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("list wheel Scroll View"),
        centerTitle: true,
      ),
      body: // ListView
          ListWheelScrollView.useDelegate(
        // padding: const EdgeInsets.all(16),
        itemExtent: 250,
        physics: FixedExtentScrollPhysics(),
        // onSelectedItemChanged: (index) =>
        //     showToast('Selected Item: ${index + 1}'),
        // squeeze: 0.7, //default 1.0
        // offAxisFraction: -1.5,

        // useMagnifier: true,
        // magnification: 1.5,

        //value between 0 --> 0.01
        // perspective: 0.005,
        // diameterRatio: 0.8, //default 2.0
        childDelegate: ListWheelChildBuilderDelegate(
            childCount: 10, builder: (context, index) => buildCard(index)),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          final nextIndex = controller.selectedItem + 1;
          controller.animateToItem(
            nextIndex,
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
          );
        },
      ),
    );
  }

  Card buildCard(int item) {
    return Card(
      child: Center(
        child: Text(
          "${item}",
          selectionColor: Colors.white,
        ),
      ),
      color: Colors.blue,
    );
  }
}
