import 'package:animation_app_demo/data/screen_data.dart';
import 'package:animation_app_demo/models/screen_model.dart';
import 'package:flutter/material.dart';

class HomeBodyScreen extends StatefulWidget {
  const HomeBodyScreen({super.key});

  @override
  State<HomeBodyScreen> createState() => _HomeBodyScreenState();
}

class _HomeBodyScreenState extends State<HomeBodyScreen> {
  List<String> items = [];
  bool loading = false, allLoaded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: screens.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SearchCard(
                  screenModel: screens[index],
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

class SearchCard extends StatelessWidget {
  final ScreenModel screenModel;
  const SearchCard({
    Key? key,
    required this.screenModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        title: Text(
          screenModel.title,
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(1, 1),
                  blurRadius: 1.0,
                  color: Colors.grey.withOpacity(0.5),
                )
              ]),
        ),
        subtitle: Text(screenModel.subtitle),
        tileColor: Colors.white,
        trailing: const Icon(Icons.arrow_forward),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => screenModel.page,
            ),
          );
        },
      ),
    );
  }
}
