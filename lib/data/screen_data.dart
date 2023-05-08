import 'package:animation_app_demo/models/screen_model.dart';
import 'package:animation_app_demo/screens/listview_scroling/list_scroll_view.dart';

final List<ScreenModel> screens = [
  ScreenModel(title: "title", subtitle: "subtitle", onChanged: () {}, page: ListScrollView()),
  ScreenModel(title: "title", subtitle: "subtitle", onChanged: () {}, page: ListScrollView()),
];